package com.oceanIT.service;

import java.util.List;
import java.util.Map;

import com.oceanIT.vo.SampleVO;

public interface SampleService {

	List<SampleVO> selectBoardList(Map<String, Object> map) throws Exception;

}
