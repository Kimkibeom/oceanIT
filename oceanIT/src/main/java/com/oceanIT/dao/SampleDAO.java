package com.oceanIT.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceanIT.vo.SampleVO;

@Repository("sampleDAO")
public class SampleDAO{
	
	@Autowired
    private SqlSessionTemplate sqlSession;

	public List<SampleVO> selectBoardList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("sample.selectBoardList");
	}
 
}
