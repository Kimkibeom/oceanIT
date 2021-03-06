
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
<title>교과과정</title>
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
			<h2>교과과정</h2>
			<div style="width: 50%;">
				<div>
					<img style="wdith: 50%; height: 100%;"
						src="<c:url value='/'/>images/boards/curi.png">
				</div>
				<div>
					<img style="wdith: 50%; height: 100%;"
						src="<c:url value='/'/>images/boards/curitable.png">
				</div>
			</div>
		</div>
			</div>
		</div>
		<div id="footer"><c:import url="/PageLink.do?link=main/inc/IncFooter" /></div>
</div>
</body>
</html>