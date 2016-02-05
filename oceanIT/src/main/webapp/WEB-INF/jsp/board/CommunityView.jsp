
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
<style>
div {
	border: solid 1px;
}
</style>
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
		<div>Board View : ${board }</div>
		<div>
			<div>No.${board.boardNo }</div>
			<!-- 테이블 -->
			<div>
				<!-- 제목 -->
				<div style="background: gray">
					<div
						style="display: inline-block; color: skyblue; font-size: 20px; width: 78%">${board.title }</div>
					<div style="display: inline-block; width: 19%; text-align: right;">작성자
						: ${board.writer }</div>
				</div>
				<!-- 작성일 -->
				<div style="text-align: right;">
					<div style="display: inline-block; width: 40%;">작성일 :
						${board.regDate }</div>
					<div style="display: inline-block; width: 8%;">hit :
						${board.readCnt }</div>
					<div style="display: inline-block; width: 20%;">ip :
						${board.ip }</div>
				</div>
				<!-- 컨텐츠 -->
				<div>
					<div>${board.article }</div>
				</div>

			</div>
		</div>


	</div>
	<%-- 	list.get :
	<%=list.get(0).toString()%> --%>
</body>
</html>