package com.oceanIT.common.logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoggerInterceptor extends HandlerInterceptorAdapter {
    protected Log log = LogFactory.getLog(LoggerInterceptor.class);
     
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    	log.debug("======================================          START         ======================================");
        log.debug(" Request URI \t:  " + request.getRequestURI());
        
        if(request.getSession().getAttribute("user") == null){
        	response.sendRedirect("/controller/PageLink.do?link=main/login");
        	return false;
        }
        
        return true;
    }
     
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        if (log.isDebugEnabled()) {
            log.debug("======================================           END          ======================================\n");
        }
    }
}