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
	<h1><a href="<c:url value='/'/>actionMain.do"><img src="<c:url value='/'/>images/header/logo.JPG" alt="해양IT전공 사이트" /></a></h1>
</div>

<pre>
<p align="right">
<c:if test="${sessionScope.user eq null}"><a href="<c:url value='/'/>PageLink.do?link=main/login"><img src="<c:url value='/'/>images/header/login.JPG" alt="로그인" /></a></c:if>&nbsp; &nbsp;<a href="http://www.hoseo.ac.kr"><img src="<c:url value='/'/>images/header/hoseo.JPG" alt="학교 홈페이지로 이동" /></a></p>
</pre>