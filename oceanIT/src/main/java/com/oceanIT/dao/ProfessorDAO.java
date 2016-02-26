package com.oceanIT.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceanIT.vo.ProfessorVO;

@Repository("professorDAO")
public class ProfessorDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<ProfessorVO> getProfessorList(){
		/*List<ProfessorVO> list = sqlSession.selectList("professor.getProfessorList");*/
		return sqlSession.selectList("professor.getProfessorList");
	}

	public ProfessorVO selectProfessor(String professor_no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("professor.selectProfessor", Integer.parseInt(professor_no));
	}

}
