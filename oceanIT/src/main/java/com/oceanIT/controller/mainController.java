package com.oceanIT.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class mainController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/actionMain.do")
	public String actionMain() throws Exception{
		// login security 추가해야 함
		return "forward:/mainPage.do";
	}
	
	@RequestMapping(value="/mainPage.do")
	public String getMainPage() throws Exception{
		return "/main/MainView";
	}
	
	@RequestMapping(value="/mainBoardList.do")
	public String getMainHeadMenu(ModelMap model) throws Exception{
		//headmenu boardname 목록 가져와서 뿌림
		return "/main/inc/IncHeadMenu";
	}
}
