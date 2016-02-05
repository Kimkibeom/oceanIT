
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>교수소개</title>
<link href="<c:url value='/css/common.css'/>" rel="stylesheet"
	type="text/css">
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>
<!-- 전체 레이어 시작 -->
<div id="wrap">
	<!-- header 시작 -->
	<div id="header"><c:import url="/PageLink.do?link=main/inc/IncHeader" /></div>
	<div id="topnavi"><c:import url="/mainBoardList.do" /></div>
	<!-- header 끝 -->
		<div class="container">
			<div id="leftmenu">
				<c:import url="/LeftMenu.do?boardno=${sessionScope.no }" />
			</div>
			<div id="content">
				<div>
				<h2>교수소개</h2>
				<hr>
				<br>
				<table>
					<c:forEach begin="0" end="4" var="linecnt">
						<tr>
							<c:forEach begin="1" end="2" var="profsno">
								<th style="border: solid #d1d1d1 1px; width: 46%; margin: 10px">
									<div style="border: padding: 5px; width: 300px; height: 100px">
										<img style="wdith: 100%; height: 100%;"
											src="<c:url value='/'/>images/boards/professorcards/professor${linecnt*2+profsno}.png">
									</div>
								</th>
							</c:forEach>
						</tr>
					</c:forEach>


				</table>
			</div>
			</div>
		</div>
		<div id="footer"><c:import url="/PageLink.do?link=main/inc/IncFooter" /></div>
</div>
</body>
</html>