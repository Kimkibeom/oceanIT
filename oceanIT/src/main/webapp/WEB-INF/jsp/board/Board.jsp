
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
				<div id="leftmenu">
					<c:import url="/LeftMenu.do?boardno=${sessionScope.no }" />
				</div>
				<div id="content">
					<h2>공지사항</h2>
					<div class="default_tablestyle">
						<table cellpadding="0" cellspacing="0">
							<thead>
								<tr>
									<th class="f_field" nowrap="nowrap">번호</th>
									<th nowrap="nowrap">제목</th>
									<th nowrap="nowrap">작성일</th>
									<th nowrap="nowrap">작성자</th>
									<th nowrap="nowrap">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="bd" items="${BoardList}" varStatus="status">
									<tr>
										<td nowrap="nowrap"><c:out value="${bd.boardNo}"></c:out></td>
										<td nowrap="nowrap"><a
											href="/controller/BoardView.do?boardNo=${bd.boardNo }"><c:out
													value="${bd.title}"></c:out></a></td>
										<td id="reg_date" nowrap="nowrap"><c:out
												value="${bd.strDate}"></c:out></td>
										<td nowrap="nowrap"><c:out value="${bd.writer}"></c:out></td>
										<td nowrap="nowrap"><c:out value="${bd.readCnt}"></c:out></td>
								</c:forEach>
							</tbody>
						</table>
						<div style="text-align: center;">
					<!-- paging -->
					<%-- start = ${startPage },end = ${endPage }, boardPage = ${boardPage }
					last = ${lastPage } --%>
					<c:if test="${startPage != 1 }">
						<a href="/controller/Board.do?no=5&boardPage=1">[처음]</a>
						<a
							href="/controller/Board.do?no=5&boardPage=${startPage - 10 }">[이전]</a>
					</c:if>
					<c:forEach begin="${startPage }" end="${endPage }" var="pageindex">
						<c:choose>
							<c:when test="${boardPage == pageindex }">
								<span style="color: black;">[${pageindex }]</span>
							</c:when>
							<c:otherwise>
								<c:if test="${endPage <= lastPage}">
									<a style="color: purple;"
										href="/controller/Board.do?no=5&boardPage=${pageindex }">[${pageindex }]</a>
								</c:if>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:set value="${startPage + 10}" var="gtvar"></c:set>
					<c:if test="${startPage + 10 <= lastPage}">
						<a href="/controller/Board.do?no=5&boardPage=${gtvar }">[다음]</a>
						<a href="/controller/Board.do?no=5&boardPage=${lastPage }">[끝]</a>
					</c:if>
				</div>
						<div id="Page_Select" align="center">
							<table>
								<tr>
									<form action="/controller/nameSelectBoardList.do">
										<select name="Select_Name">
											<option value="Board_Title">제목</option>
											<option value="Title_Content">제목+내용</option>
										</select> &nbsp;<input type="text" name="Title" size="30">
										&nbsp;<input type="submit" value="확인">
									</form>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div id="footer">
				<c:import url="/PageLink.do?link=main/inc/IncFooter" />
			</div>
		</div>
	</div>
	<%-- 	list.get :
	<%=list.get(0).toString()%> --%>
</body>
</html>