package com.oceanIT.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceanIT.vo.Kind_of_boardVO;

@Repository("kind_of_boardDAO")
public class Kind_of_boardDAO {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Kind_of_boardVO> loadMenuList(String no){
		int boardNo = Integer.parseInt(no);
		List<Kind_of_boardVO> list = new ArrayList<Kind_of_boardVO>();
		list = sqlSession.selectList("kind_of_board.loadMenuList", boardNo);
		return list;
	}

}
