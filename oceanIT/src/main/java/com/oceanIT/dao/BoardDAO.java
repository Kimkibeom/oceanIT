package com.oceanIT.dao;

import java.util.HashMap;
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
		// log.info("BoardList DAO board : " );
		return sqlSession.selectOne(stmt, boardNo);
	}

	public int selectBoardCnt(int kindNo) {
		String stmt = nameSpace + "selectBoardCnt";

		return sqlSession.selectOne(stmt, kindNo);
	}

	public List<BoardVO> selectBoardListByPage(int boardPage, int BOARD_PER_PAGE, int no) {
		String stmt = nameSpace + "selectBoardByPage";
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("FROM", (BOARD_PER_PAGE * (boardPage - 1)) + 1);
		map.put("TO", (BOARD_PER_PAGE * boardPage));
		map.put("kindNo", no);
		return sqlSession.selectList(stmt, map);
	}

}
