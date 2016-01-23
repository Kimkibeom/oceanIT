package com.oceanIT.common;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *  페이지 이동 처리를 위한 유틸성 controller 클래스
 * @author kimkibeom
 *
 */

@Controller
public class PageMoveController {
	
	@RequestMapping(value="/PageLink.do")
	public String moveToPage(@RequestParam("link") String linkPage, HttpSession session){
		
		String link = linkPage;
		ModelAndView mv = null;
		
		if(link == null || link.equals("")){
			link = "error/Error";
		}else{
			if (link.indexOf(",") > -1) {
				link = link.substring(0, link.indexOf(","));
			}
		}
		
		return link;
	}
}
