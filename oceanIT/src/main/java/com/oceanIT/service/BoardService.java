package com.oceanIT.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.oceanIT.dao.BoardDAO;
import com.oceanIT.dao.SampleDAO;
import com.oceanIT.vo.BoardVO;
import com.oceanIT.vo.SampleVO;

@Service("BoardService")
public class BoardService {

	private Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "boardDAO")
	private BoardDAO bdao;

	public List<BoardVO> selectBoardList() {
		return bdao.selectBoardList();
	}

	public BoardVO selectBoardByBoardNo(int boardNo) {
		return bdao.selectBoardByBoardNo(boardNo);
	}
	
	public List<BoardVO> selectBoardByBoardTitle(String boardTitle) {
		return bdao.selectBoardByBoardTitle(boardTitle);
	}
	
	public List<BoardVO> selectBoardByBoardTitleContent(String boardTitleContent) {
		return bdao.selectBoardByBoardTitleContent(boardTitleContent);
	}

	public int selectBoardCnt(int kindNo) {
		return bdao.selectBoardCnt(kindNo);
	}

	public List<BoardVO> selectBoardListByPage(int boardPage, int BOARD_PER_PAGE, int no) {
		return bdao.selectBoardListByPage(boardPage, BOARD_PER_PAGE, no);
	}
}
