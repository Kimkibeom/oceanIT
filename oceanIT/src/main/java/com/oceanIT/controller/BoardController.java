package com.oceanIT.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.oceanIT.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService bservice;

	private Logger log = Logger.getLogger(this.getClass());

	@RequestMapping(value = "/DepartmentBoard.do")
	public String gotoDeptIntro() throws Exception {
		return "/board/DepartmentBoard";
	}

	@RequestMapping(value = "/BoardView.do")
	public String gotoBoardView(Model model, @RequestParam("boardNo") int boardNo) throws Exception {
		bservice.selectBoardByBoardNo(boardNo);
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
	public String gotoProfsIntro() throws Exception {
		return "/board/ProfessorIntro";
	}

	@RequestMapping(value = "/Curriculum.do")
	public String gotoCurriculum() throws Exception {
		return "/board/Curriculum";
	}

	@RequestMapping(value = "/Community.do")
	public String gotoCommunity() throws Exception {
		return "/board/Community";
	}

	@RequestMapping(value = "/Board.do")
	public String gotoBoard(Model model) throws Exception {
		model.addAttribute("BoardList", bservice.selectBoardList());
		return "/board/Board";
	}

}
