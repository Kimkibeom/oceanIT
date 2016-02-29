
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
<title>학과소개</title>
<link href="<c:url value='/css/common.css'/>" rel="stylesheet"
	type="text/css">
</head>
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
		<div style="padding: 10px;" class="container">
		<div id="leftmenu">
				<c:import url="/LeftMenu.do?boardno=${sessionScope.no }" />
			</div>
			<h2>진로/자격증</h2>
			<hr>
			<div>
				<h4>졸업후 진로</h4>
				<ul>
					<li>- 해양정보통신분야 공무원, 해양관련연구소 및 협회
					<li>- 항만공사 및 항만터미널 회사
					<li>- 조선회사, 해운회사 등 해양관련 산업체
					<li>- 선박이나 해양 구조물 생산 및 판매 업체
					<li>- 물류정보통신관련 산업체 - 통신시스템, 휴대용 멀티미디어 기기, 모바일소프트웨어, 인터넷,
						네트워크관련 업체
					<li>- 연계교육을 통한 선박 항해사, 기관사, 통신사 등 다양한 분야로 진출 가능
				</ul>
				<br> <br> <br>

				<h4>자격증</h4>
				<div>해양조사기사, 조선기사, 무선설비기사, 항로표지기사, 정보처리기사, 전파전자통신기사, 전자기사</div>
			</div>
		</div>
	</div>

</body>
</html>