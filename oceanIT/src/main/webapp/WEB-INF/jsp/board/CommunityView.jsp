
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

<link href="<c:url value='/css/boardview.css'/>" rel="stylesheet"
	type="text/css">

</head>
<style>
/* div {
	border: solid 1px;
} */
</style>
<script type="text/javascript">
	/* 	function postReply() {
	 if (document.postcmt.commentwriter.value == "") {
	 alert("이름을 입력하세요");
	 return false;
	 } else if (document.postcmt.password.value == "") {
	 alert("비밀번호를 입력하세요");
	 return false;
	 } else {
	 document.postcmt.action = "<c:url value='/PostReply.do'/>";
	 //document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
	 //document.loginForm.action="<c:url value='/j_spring_security_check'/>";
	 document.loginForm.submit();
	 }
	 } */
</script>
<body>
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
		<div class="container">
			<div id="leftmenu">
				<c:import url="/LeftMenu.do?boardno=${sessionScope.no }" />
			</div>
			<h2>자유게시판</h2>
			<hr>
			<form id="postcmt" method="post"
				action="<c:url value='/PostReply.do'/>">

				<div>Board View : ${board }</div>
				<div>
					<div>No.${board.boardNo }</div>
					<table cellpadding="0" cellspacing="0" width="900px">
						<!-- 제목 -->
						<thead>
							<tr>
								<th nowrap="nowrap" colspan="2"
									style="font-size: 20px !important; text-align: left;">
									${board.title }</th>
								<th nowrap="nowrap" style="text-align: right; color: graytext;"
									colspan="2">작성자 : ${board.writer }</th>
							</tr>
						</thead>
						<!-- 작성일 -->
						<tr style="text-align: right;">
							<td nowrap="nowrap" colspan="3">* 작성일 : ${board.strDate } *
								hit : ${board.readCnt } * ip : ${board.ip }</td>
						</tr>
						<!-- 컨텐츠 -->
						<tr>
							<td id="article" colspan="3" style="min-height: 700px;">${board.article }</td>
						</tr>
						<!-- 댓글 -->

						<tr style="border-top: 1px solid #D4E0EE;">

							<td style="width: 100px;"><input type="hidden"
								name="boardNo" id="boardNo" value="${board.boardNo }"> <input
								type="text" id="commentwriter" name="comnentwriter"
								placeholder="이름" /></td>
							<td colspan="2" rowspan="2"><textarea id="comment"
									name="comment" placeholder="comment" rows="3" cols="80"></textarea><input
								type="submit"></td>

						</tr>
						<tr>
							<td><input type="text" id="commentpass" name="commentpass"
								placeholder="비밀번호" /></td>
						</tr>
						<%-- 
						<tr style="border-top: 1px solid #D4E0EE;">
							<td colspan="3"><form id="postcmt" method="post"
									action="<c:url value='/PostReply.do'/>">
									<input type="hidden" name="boardNo" id="boardNo"
										value="${board.boardNo }">
									<div>
										<input type="text" id="commentwriter" name="comnentwriter"
											placeholder="이름" /> <input type="password" id="commentpass"
											name="commentpass" placeholder="비밀번호" />
										<textarea id="comment" name="comment" placeholder="comment"
											rows="3" cols="80"></textarea>
										<!-- <button type="button" onclick="javascript:postReply()">등록</button> -->
										<input type="submit">
									</div>
								</form></td>
						</tr>
 --%>
						</form>
					</table>
				</div>
		</div>
	</div>
	<%-- 	list.get :
	<%=list.get(0).toString()%> --%>
</body>
</html>