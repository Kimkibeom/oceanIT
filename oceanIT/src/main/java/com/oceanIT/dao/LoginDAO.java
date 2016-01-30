package com.oceanIT.dao;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceanIT.vo.LoginVO;

@Repository("loginDAO")
public class LoginDAO {
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public LoginVO actionLogin(LoginVO vo){
		log.info(vo.getMember_id());
		log.info(vo.getName());
		log.info(vo.getPassword());
		return sqlSession.selectOne("login.actionLogin", vo);
	}

}
