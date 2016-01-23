<%--
  Class Name : IncHeader.jsp
  Description : 화면상단 Header (include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2016.01.24   김기범       최초 파일 생성
 
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="logoarea">
	<h1><a href="<c:url value='/'/>actionMain.do"><img src="<c:url value='/'/>images/header/logo.jpg" alt="템플릿 샘플 내부업무 사이트" /></a></h1>
</div>