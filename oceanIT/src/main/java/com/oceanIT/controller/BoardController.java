package com.oceanIT.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.oceanIT.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService bservice;
	final int BOARD_PER_PAGE = 10;
	private Logger log = Logger.getLogger(this.getClass());

	@RequestMapping(value = "/DepartmentBoard.do")
	public String gotoDeptIntro(HttpServletRequest request, @RequestParam("no") String no) throws Exception {
		request.getSession().setAttribute("no", no);
		return "/board/DepartmentBoard";
	}

	@RequestMapping(value = "/BoardView.do")
	public String gotoBoardView(Model model, @RequestParam("boardNo") int boardNo) throws Exception {
		model.addAttribute("board", bservice.selectBoardByBoardNo(boardNo));
		return "/board/BoardView";
	}

	@RequestMapping(value = "/DepartmentFuture.do")
	public String gotoDeptFuture() throws Exception {
		return "/board/DepartmentFuture";
	}

	@RequestMapping(value = "/DepartmentOffice.do")
	public String gotoDeptOffice() throws Exception {
		return "/board/DepartmentOffice";
	}

	@RequestMapping(value = "/DepartmentIntro.do")
	public String gotoDeptIntro2() throws Exception {
		return "/board/DepartmentIntro";
	}

	@RequestMapping(value = "/ProfessorIntro.do")
	public String gotoProfsIntro(HttpServletRequest request, @RequestParam("no") String no) throws Exception {
		request.getSession().setAttribute("no", no);
		return "/board/ProfessorIntro";
	}

	@RequestMapping(value = "/Curriculum.do")
	public String gotoCurriculum(HttpServletRequest request, @RequestParam("no") String no) throws Exception {
		request.getSession().setAttribute("no", no);
		return "/board/Curriculum";
	}

	@RequestMapping(value = "/Community.do")
	public String gotoCommunity(Model model, HttpServletRequest request, @RequestParam("no") String no,
			@RequestParam("boardPage") int boardPage) throws Exception {
		request.getSession().setAttribute("no", no);
		int startPage = boardPage - 4, endPage = boardPage + 4;
		int boardCnt = bservice.selectBoardCnt(Integer.parseInt(no));
		// int boardCnt = bservice.selectBoardCnt(1);

		if ((boardCnt / BOARD_PER_PAGE) < endPage) {
			endPage = boardCnt / BOARD_PER_PAGE;
		}
		if (startPage <= 0) {
			startPage = 1;
		}
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("BoardList",
				bservice.selectBoardListByPage(boardPage, BOARD_PER_PAGE, Integer.parseInt(no)));
		return "/board/Community";
	}

	@RequestMapping(value = "/CommunityView.do")
	public String gotoCommunityView(Model model, @RequestParam("boardNo") int boardNo) throws Exception {
		model.addAttribute("board", bservice.selectBoardByBoardNo(boardNo));
		return "/board/CommunityView";
	}

	@RequestMapping(value = "/Board.do")
	public String gotoBoard(ModelMap model) throws Exception {
		model.addAttribute("BoardList", bservice.selectBoardList());
		return "/board/Board";
	}

	@RequestMapping(value = "/PostReply.do", method = RequestMethod.POST)
	public String postReply(ModelMap model, int boardNo, String comnentwriter, String commentpass, String comment)
			throws Exception {
		model.addAttribute("board", bservice.selectBoardByBoardNo(boardNo));

		log.info("comment : " + comment);
		return "/board/CommunityView";
	}

}
