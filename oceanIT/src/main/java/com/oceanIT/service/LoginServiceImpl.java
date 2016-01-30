package com.oceanIT.service;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.oceanIT.dao.LoginDAO;
import com.oceanIT.vo.LoginVO;

@Service("loginService")
public class LoginServiceImpl {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="loginDAO")
	private LoginDAO loginDAO;
	
	public LoginVO actionLogin(LoginVO vo){
		LoginVO testVo = loginDAO.actionLogin(vo);
		
		return testVo;
	}
}
