package com.oceanIT.dao;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oceanIT.vo.BoardVO;
import com.oceanIT.vo.SampleVO;

@Repository("boardDAO")
public class BoardDAO {

	private Logger log = Logger.getLogger(this.getClass());

	@Autowired
	private SqlSessionTemplate sqlSession;
	String nameSpace = "boardMapper.";

	public List<BoardVO> selectBoardList() {
		// TODO Auto-generated method stub
		String stmt = nameSpace + "selectBoardList";
		List<BoardVO> list = sqlSession.selectList(stmt);
		log.info("BoardList DAO board : " + list);
		return sqlSession.selectList(stmt);
	}

	public BoardVO selectBoardByBoardNo(int boardNo) {
		String stmt = nameSpace + "selectBoardByBoardNo";
//		log.info("BoardList DAO board : " );
		return sqlSession.selectOne(stmt, boardNo);
	}
	
	public List<BoardVO> selectBoardByBoardTitle(String boardTitle) {
		String stmt = nameSpace + "selectBoardByBoardTitle";
		return sqlSession.selectList(stmt, boardTitle);
	}
	
	public List<BoardVO> selectBoardByBoardTitleContent(String boardTitleContent) {
		String stmt = nameSpace + "selectBoardByBoardTitleContent";
		return sqlSession.selectList(stmt, boardTitleContent);
	}
}
