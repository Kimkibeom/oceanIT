package com.oceanIT.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oceanIT.service.SampleService;
import com.oceanIT.vo.SampleVO;

@Controller
public class SampleController {
    Logger log = Logger.getLogger(this.getClass());
     
    @Resource(name="sampleService")
    private SampleService sampleService;
     
    @RequestMapping(value="/sample/openSampleBoardList.do")
    public ModelAndView openSampleBoardList(Map<String, Object> Map) throws Exception{
        ModelAndView mv = new ModelAndView("/sample/boardList");
         
        List<SampleVO> list = sampleService.selectBoardList(Map);
        mv.addObject("list", list);
         
        return mv;
    }
}
