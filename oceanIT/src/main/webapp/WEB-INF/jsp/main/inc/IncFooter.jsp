<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css" >
</head>
<body>
<div style="border-bottom:2px solid #dddddd;border-top:2px solid #dddddd;clear:both;padding-bottom:20px;font-size:14px;">
		<li style="float:left; font-weight: bold;">&nbsp;<a href="#" onclick="javascript:window.open('http://www.hoseo.ac.kr/CmsHome/AddPage/Privacy.eznic', 'frnd', 'width=610 height=440 scrollbars=yes')">개인정보처리방침</a>&nbsp;</li>
		<li style="float:left;">|</li>
		<li style="float:left;">&nbsp;<a href="#" onclick="javascript:window.open('http://www.hoseo.ac.kr/CmsHome/AddPage/EmailRefuse.eznic', 'frnd', 'width=610 height=180 scrollbars=yes')">이메일무단수집거부</a>&nbsp;</li>
		<li style="float:left;">|</li>
		<li style="float:left;">&nbsp;<a href="http://www.hoseo.ac.kr/CmsHome/introduce_09_01.eznic" target="_blank">오시는길</a>&nbsp;</li>
		
		<div style="float:right; font-size:10pt;">
			<select style="width:160px; height:20px;" id="familySite1" name="familySite1" title="기관 및 추천사이트">
				<option value="http://www.sit.ac.kr/" target="_blank">서울정보통신대학원</option>
				<option value="http://www.habitat.or.kr/" target="_blank">사랑의집짓기</option>
				<option value="http://www.cnwork.or.kr/" target="_blank">충남산업인력정보망</option>
				<option value="http://wifi.olleh.com/wifi.html" target="_blank">무선랜서비스</option>
				<option value="http://www.voanews.com/learningenglish/home/" target="_blank">Voice of America</option>
				<option value="http://www.loe.org/index.php" target="_blank">Living On Earth</option>
				<option value="http://www.consumer.go.kr/" target="_blank">소비자홈페이지11</option> 
			</select>
			<input type="image" alt="선택한 관련사이트 새창열기" src="<c:url value='/'/>images/footer/btn_go.jpg" onclick="javascript:validate1()">
			
			<select style="width:160px; height:20px;" id="familySite2" name="familySite2" title="교내관련사이트">
				<option value="" selected="selected">교내관련사이트</option>
				<option value="http://intranet.hoseo.ac.kr/" target="_blank">인트라넷(학사관리)</option>
				<option value="http://office.hoseo.ac.kr/" target="_blank">교직원그룹웨어</option>
				<option value="http://edupower-up.hoseo.edu" target="_blank">교육역량강화사업</option>
				<option value="http://intranet.hoseo.edu/" target="_blank">행정시스템</option>
				<option value="http://linc.hoseo.ac.kr" target="_blank">LINC사업단</option>
				<option value="http://hoseochapel.kr/" target="_blank">교목실</option>
				<option value="http://community.hoseo.ac.kr/" target="_blank">호서 선후배-사랑학습공동체</option>
				<option value="http://www.hoseoin.com/" target="_blank">생활관</option>
				<option value="http://learn.hoseo.edu/" target="_blank">교수학습센터/사이버강좌</option>
				<option value="http://le.hoseo.ac.kr/" target="_blank">학점은행제/보육교사</option>
				<option value="http://gsv.hoseo.ac.kr/" target="_blank">벤처전문대학원</option>
				<option value="http://ieec.hoseo.edu/" target="_blank">국제업무팀</option>
				<option value="http://www.hoseo-imgifted.com/" target="_blank">국제(영어)영재교육원</option>
				<option value="http://i.hoseo.edu/" target="_blank">hoseo interactive</option>
				<option value="http://counseling.hoseo.edu" target="_blank">학생생활상담소</option>
				<option value="http://iacf.hoseo.ac.kr/" target="_blank">호서대학교 산학협력단</option>
				<option value="http://www.tbi-hoseo.or.kr/" target="_blank">신기술창업보육센터</option>
				<option value="http://hoseo.kidis.co.kr" target="_blank">부속유치원</option>
				<option value="http://iec.hoseo.ac.kr/" target="_blank">충남산학협력중심대학사업단</option>
				<option value="http://cando.hoseo.ac.kr/main/" target="_blank">취업정보(사회진출센터)</option>
				<option value="http://hass.hoseo.ac.kr/OpenWeb/HOSEO/default.aspx" target="_blank">HASS(공학교육인증)</option>
				<option value="http://test.hoseo.ac.kr/realenglish/index.jsp" target="_blank">Real English</option>
				<option value="http://cyber.hoseo.ac.kr/" target="_blank">자연사박물관</option>
				<option value="http://bk21.ipronet.co.kr/kor/main.htm" target="_blank">2단계 BK21 사업단</option>
				<option value="http://bk21.ipronet.co.kr/kor/main.htm" target="_blank">연합신학전문대학원</option>
				<option value="http://gteec.or.kr/" target="_blank">지열인력양성센터</option>
				<option value="http://www.hoseogvc.or.kr/" target="_blank">글로벌비전센터</option>
				<option value="http://rotc166.cafe24.com/" target="_blank">학군단</option>
				<option value="http://le.hoseo.ac.kr/" target="_blank">학점은행제/보육교사</option>
				<option value="http://safety.hoseo.edu" target="_blank">호서대학교안전정보망</option>
				<option value="http://as82.kr/hoseo" target="_blank">원격지원</option>
			</select>
			<input type="image" alt="선택한 관련사이트 새창열기" src="<c:url value='/'/>images/footer/btn_go.jpg" onclick="javascript:validate2()">
		</div>
	</div>
<div id="mopaslogo"><img src="<c:url value='/'/>images/footer/footer.JPG" alt="학교정보" /></div>
<script type="text/javascript">
function validate1(){
	var combo1 = document.getElementById("familySite1");
	window.open(combo1.value);
}

function validate2(){
	var combo2 = document.getElementById("familySite2");
	window.open(combo2.value);
}
</script>

</body>
</html>