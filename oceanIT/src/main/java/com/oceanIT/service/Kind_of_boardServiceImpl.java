package com.oceanIT.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.oceanIT.dao.Kind_of_boardDAO;
import com.oceanIT.vo.Kind_of_boardVO;

@Service("kind_of_boardService")
public class Kind_of_boardServiceImpl {
	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name="kind_of_boardDAO")
	private Kind_of_boardDAO kind_of_boardDAO;
	
	public List<Kind_of_boardVO> loadMenuList(String no){
		
		return kind_of_boardDAO.loadMenuList(no);
	}
}
