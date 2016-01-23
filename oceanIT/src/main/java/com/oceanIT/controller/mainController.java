package com.oceanIT.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	
	@RequestMapping(value="/actionMain.do")
	public String actionMain() throws Exception{
		// login security 추가해야 함
		return "forward:/mainPage.do";
	}
	
	@RequestMapping(value="/mainPage.do")
	public String getMainPage() throws Exception{
		return "/main/MainView";
	}
	
}
