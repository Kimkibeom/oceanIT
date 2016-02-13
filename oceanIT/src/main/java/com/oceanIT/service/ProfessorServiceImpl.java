package com.oceanIT.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.oceanIT.dao.ProfessorDAO;
import com.oceanIT.vo.ProfessorVO;

@Service("professorService")
public class ProfessorServiceImpl {	
	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name="professorDAO")
	private ProfessorDAO professorDAO;
	
	public List<ProfessorVO> getProfessorList(){
		return professorDAO.getProfessorList();
	}

	public Map<String, Object> selectProfessor(Map<String, String> paramMap) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		ProfessorVO professorVO = professorDAO.selectProfessor(paramMap.get("professor_no"));
		returnMap.put("ProfessorVO", professorVO);
		
		return returnMap;
	}
	
}
