package com.oceanIT.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.logging.Log;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.oceanIT.service.BoardService;
import com.oceanIT.service.ProfessorServiceImpl;
import com.oceanIT.vo.ProfessorVO;

@Controller
public class BoardController {
	@Autowired
	BoardService bservice;
	final int BOARD_PER_PAGE = 10;

	@Resource(name = "professorService")
	private ProfessorServiceImpl professorService;

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
	public String gotoDeptFuture(HttpServletRequest request, @RequestParam("no") String no) throws Exception {
		request.getSession().setAttribute("no", no);
		return "/board/DepartmentFuture";
	}

	@RequestMapping(value = "/DepartmentOffice.do")
	public String gotoDeptOffice(HttpServletRequest request, @RequestParam("no") String no) throws Exception {
		request.getSession().setAttribute("no", no);
		return "/board/DepartmentOffice";
	}

	@RequestMapping(value = "/DepartmentIntro.do")
	public String gotoDeptIntro2(HttpServletRequest request, @RequestParam("no") String no) throws Exception {
		request.getSession().setAttribute("no", no);
		return "/board/DepartmentIntro";
	}

	@RequestMapping(value = "/ProfessorIntro.do")
	public String gotoProfsIntro(HttpServletRequest request, @RequestParam("no") String no, ModelMap model)
			throws Exception {
		request.getSession().setAttribute("no", no);
		List<ProfessorVO> list = professorService.getProfessorList();
		model.addAttribute("ProfessorVO", list);
		return "/board/ProfessorIntro";
	}

	@RequestMapping(value = "/selectProfessor.do")
	public void selectProfessor(@RequestParam Map<String, String> paramMap, ModelMap model,
			HttpServletResponse response) throws Exception {
		Map<String, Object> map = professorService.selectProfessor(paramMap);

		Gson gson = new Gson();
		PrintWriter pw = null;
		response.setContentType("application/json");
		response.setContentType("text/xml;charset=utf-8");
		response.setHeader("Cache-Control", "no-cache");
		pw = new PrintWriter(response.getWriter());
		pw.println(gson.toJson(map));
		pw.flush();
		pw.close();
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
		int boardCnt = bservice.selectBoardCnt(Integer.parseInt(no));
		int startPage = 1, endPage = (boardCnt / BOARD_PER_PAGE) + 1;
		model.addAttribute("lastPage", endPage - 1);
		if (BOARD_PER_PAGE * 9 < boardCnt) {
			startPage += ((boardPage - 1) / 10) * 10;
			endPage = startPage + 9;
		}

		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("boardPage", boardPage);
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
	public String gotoBoard(ModelMap model, HttpServletRequest request, @RequestParam("no") String no,
			@RequestParam("boardPage") int boardPage) throws Exception {
		request.getSession().setAttribute("no", no);

		int boardCnt = bservice.selectBoardCnt(Integer.parseInt(no));
		int startPage = 1, endPage = (boardCnt / BOARD_PER_PAGE) + 1;
		model.addAttribute("lastPage", endPage - 1);
		if (BOARD_PER_PAGE * 9 < boardCnt) {
			startPage += ((boardPage - 1) / 10) * 10;
			endPage = startPage + 9;
		}

		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("boardPage", boardPage);

		model.addAttribute("BoardList",
				bservice.selectBoardListByPage(boardPage, BOARD_PER_PAGE, Integer.parseInt(no)));
		return "/board/Board";
	}

	@RequestMapping(value = "/nameSelectBoardList.do")
	public String checkSelectBoard(ModelMap model, @RequestParam("Select_Name") String select) throws Exception {
		if (select.equals("Board_Title"))
			return "forward:/SelectTitleBoardList.do";
		else
			return "forward:/SelectTitleContentBoardList.do";
	}

	@RequestMapping(value = "/SelectTitleBoardList.do")
	public String getSelectTitleBoard(ModelMap model, @RequestParam("Title") String boardTitle) throws Exception {
		model.addAttribute("BoardList", bservice.selectBoardByBoardTitle(boardTitle));
		return "/board/Board";
	}

	@RequestMapping(value = "/SelectTitleContentBoardList.do")
	public String getSelectTitleContentBoard(ModelMap model, @RequestParam("Title") String boardTitleContent)
			throws Exception {
		model.addAttribute("BoardList", bservice.selectBoardByBoardTitleContent(boardTitleContent));
		return "/board/Board";
	}

	@RequestMapping(value = "/PostReply.do", method = RequestMethod.POST)
	public String postReply(ModelMap model, int boardNo, String comnentwriter, String commentpass, String comment)
			throws Exception {
		model.addAttribute("board", bservice.selectBoardByBoardNo(boardNo));
		log.info("comment : " + comment);
		return "/board/CommunityView";
	}

	@RequestMapping(value = "/sendFromLeft.do")
	public String leftMenuSent(ModelMap model, @RequestParam("no") String no) throws Exception {
		switch (Integer.parseInt(no)) {
		case 8:// 학과장 인사말
			return "redirect:/DepartmentBoard.do?no=1";
		case 9:// 학과소개
			return "redirect:/DepartmentIntro.do?no=1";
		case 10:// 학과사무실소개
			return "redirect:/DepartmentOffice.do?no=1";
		case 11:// 진로자격중
			return "redirect:/DepartmentFuture.do?no=1";
		case 12:// 교수진
			return "redirect:/ProfessorIntro.do?no=2";
		case 13:// 교과과정표
			return "redirect:/Curriculum.do?no=3";
		case 14:// 학사안내
			return "redirect:http://www.hoseo.ac.kr/CmsHome/administration_03_01.eznic";
		case 15:// 장학안내
			return "redirect:http://www.hoseo.ac.kr/CmsHome/administration_05_01.eznic";
		case 16:// 졸업안내
			return "redirect:http://www.hoseo.ac.kr/CmsHome/administration_04_05.eznic";
		case 17:// 학사일정
			return "redirect:http://www.hoseo.ac.kr/CmsHome/administration_01.eznic";
		case 18:// 학생회
			break;
		case 19:// 자유게시판
			return "redirect:/Community.do?no=5&boardPage=1";
		case 20:// 공지사항
			return "redirect:/Board.do?no=6&boardPage=1";
		case 21:// 포토게시판
			break;
		case 22:// 자료실
			break;
		case 23:// q&a
			break;
		}

		return "/board/Board";
	}

}
