package com.oceanIT.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.oceanIT.dao.SampleDAO;
import com.oceanIT.vo.SampleVO;

@Service("sampleService")
public class SampleServiceImpl implements SampleService{
	
	private Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="sampleDAO")
    private SampleDAO sampleDAO;

	@Override
	public List<SampleVO> selectBoardList(Map<String, Object> map) {
		return sampleDAO.selectBoardList();
	}
 
}
