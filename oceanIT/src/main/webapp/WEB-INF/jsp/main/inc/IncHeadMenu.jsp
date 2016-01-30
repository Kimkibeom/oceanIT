<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
    <li><a href="<%=request.getContextPath()%>/DepartmentBoard.do">학과소개</a></li>  
    <li><a href="<%=request.getContextPath()%>/ProfessorIntro.do">교수소개</a></li>
    <li><a href="<%=request.getContextPath()%>/Curriculum.do">교과과정</a></li>
    <li><a href="http://www.hoseo.ac.kr/CmsHome/administration_03_01.eznic">학사정보</a></li>
    <li><a href="<%=request.getContextPath()%>/Community.do">학과커뮤니티</a></li>
    <li><a href="<%=request.getContextPath()%>/Board.do">게시판</a></li>
    <li><a href="http://ipsi.hoseo.ac.kr/CmsHome/MainDefault.eznic">입학안내</a></li>
</ul>
</body>
</html>