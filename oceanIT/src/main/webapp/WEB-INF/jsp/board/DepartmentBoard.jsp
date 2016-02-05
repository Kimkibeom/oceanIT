
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
	<div id="header"><c:import url="/PageLink.do?link=main/inc/IncHeader" /></div>
	<div id="topnavi"><c:import url="/mainBoardList.do" /></div>
	<!-- header 끝 -->
		<div class="container">
			<div id="leftmenu">
				<c:import url="/LeftMenu.do?boardno=${sessionScope.no }" />
			</div>
			<div id="content">
				<div style="padding: 10px;" class="container">
			<h2>학과장 인사말</h2>
			<hr>
			<div>
				<h4 style="color: skyblue;">해양IT공학전공 홈페이지 방문을 진심으로 환영합니다.</h4>
				<br>
				<p>
					본 전공은 해양기술과 IT 기술의 접목을 통해 고부가가치의 신 해양산업을 이끌어 나가기 위한 해양IT 융합 분야의 창의적
					인재를 양성하고자 2014년 신설되었습니다. <br />
					<br />기존의 해양산업은 컨테이너의 출현이래로 해운, 항만, 조선, 철도, 항공 등이 연계되어 발전되었지만 이후
					정보통신기술의 발달로 경제의 디지털 혁명이 가속화 되어 급격한 변화를 맞이하게 되었습니다. 따라서 많은 IT 기술의
					접목이 필요로 하지만 이러한 산업체 요구에 부응하는 인적자원이 매우 부족합니다. <br />
					<br />이에 호서대학교에서는 국책연구기관인 선박해양플랜트연구소와 공동으로 해양IT 융합기술연구소를 설치하고 산업체
					요구에 부합하는 교육과정을 개발하여 교육을 실시중입니다. 또한 해양IT융합기술연구회에 소속된 30여 기업과 MOU를
					체결하여 맞춤형 교육과 1인 1기업의 인턴쉽 제도를 시행하여 해양IT시대를 주도할 수 있는 기술과 능력을 갖춘 전문
					인력을 양성할 것입니다. <br />
					<br />바다는 미래의 꿈을 펼쳐나갈 수 있는 인류 최대 최고의 보고입니다. 해양산업의 미래는 여러분에게 달려있습니다.
					도전을 꿈꾸는 자, 우리 해양IT 공학전공에 오셔서 미래의 꿈을 펼치시기 바랍니다.<br />
					<br />
				</p>
				<div style="text-align: right">
				<p style="font-weight: bolder;">해양IT공학 전공 학과장</p></div>
			</div>
		</div>
			</div>
		</div>
		<div id="footer"><c:import url="/PageLink.do?link=main/inc/IncFooter" /></div>
</div>
</body>
</html>