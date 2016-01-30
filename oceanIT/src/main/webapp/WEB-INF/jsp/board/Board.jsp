
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page import="com.oceanIT.vo.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<link href="<c:url value='/css/common.css'/>" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>	
</head>
<body>

	<%
		List<BoardVO> list = (List<BoardVO>) request.getAttribute("BoardList");
	%>
	<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>
	<!-- 전체 레이어 시작 -->
	<div id="wrap">
		<!-- header 시작 -->
		<div id="header">
			<c:import url="/PageLink.do?link=main/inc/IncHeader" />
		</div>
		<div id="topnavi">
			<c:import url="/mainBoardList.do" />
		</div>
		<!-- header 끝 -->
		<div>
			<!--table  -->
			<div class="container">
				<h2>학과 게시판</h2>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성일</th>
							<th>작성자</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="bd" items="${BoardList}" varStatus="status">
							<tr>
								<td><c:out value="${bd.boardNo}"></c:out></td>
								<td><c:out value="${bd.title}"></c:out></td>
								<td id="reg_date"><c:out value="${bd.regDate}"></c:out></td>
								<td><c:out value="${bd.writer}"></c:out></td>
								<td><c:out value="${bd.readCnt}"></c:out></td>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%-- 	list.get :
	<%=list.get(0).toString()%> --%>
</body>
</html>