package com.oceanIT.common;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.oceanIT.service.Kind_of_boardServiceImpl;
import com.oceanIT.service.LoginServiceImpl;
import com.oceanIT.vo.Kind_of_boardVO;
import com.oceanIT.vo.LoginVO;

/**
 *  페이지 이동 처리를 위한 유틸성 controller 클래스
 * @author kimkibeom
 *
 */

@Controller
public class PageMoveController {
	
	@Resource(name="loginService")
	private LoginServiceImpl loginService;
	
	@Resource(name="kind_of_boardService")
	private Kind_of_boardServiceImpl kind_of_boardService;
	
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
	
	@RequestMapping(value="/LeftMenu.do")
	public String loadLeftMenu(HttpServletRequest request, @RequestParam("boardno") String no, ModelMap model){
		LoginVO loginVO = new LoginVO();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		List<Kind_of_boardVO> list = new ArrayList<Kind_of_boardVO>();
		//int boardNo = Integer.parseInt(no);
		
		if(request.getSession().getAttribute("user") == null){
			//로그인을 하지 않은 상태
			model.addAttribute("LoginVO", null);
		}else{
			//로그인을 한 상태
			long lastAccessTime = request.getSession().getLastAccessedTime();
			model.addAttribute("lastAccessTime",formatter.format(lastAccessTime));
			model.addAttribute("LoginVO", request.getSession().getAttribute("LoginVO"));
		}
		
		list = kind_of_boardService.loadMenuList(no);
		model.addAttribute("boardNo", no);
		model.addAttribute("Kind_of_boardVOList", list);
		
		return "main/inc/IncLeftMenu";
	}
}
