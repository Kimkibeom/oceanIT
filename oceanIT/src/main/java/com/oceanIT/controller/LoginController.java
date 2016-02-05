package com.oceanIT.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oceanIT.service.LoginServiceImpl;
import com.oceanIT.vo.LoginVO;

@Controller
public class LoginController {
	
	@Resource(name="loginService")
	private LoginServiceImpl loginService;
	
	@RequestMapping(value="/securityLogin.do")
	public String securityLogin(@ModelAttribute("LoginVO") LoginVO loginVO, HttpServletRequest request, ModelMap model){
		String userIP = request.getRemoteAddr();
		LoginVO resultVO = loginService.actionLogin(loginVO);
		String result = null;
		
		//로그인 실패시
		if(resultVO == null){
			result = "failed";
			model.addAttribute("result", result);
			return "/main/MainView";
			
		}else{//로그인 성공시
			result = "success";
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("member_id", resultVO.getMember_id());
			map.put("password", resultVO.getPassword());
			request.getSession().setAttribute("LoginVO", resultVO);
			request.getSession().setAttribute("user", map);
			model.addAttribute("LoginVO", resultVO);
			model.addAttribute("userIP", userIP);
			model.addAttribute("result", result);
		}
		return "/main/MainView";
	}
	
	@RequestMapping(value="/logout.do")
	public String setLogout(HttpServletRequest request){
		request.getSession().invalidate();
		return "/main/MainView";
	}
}
