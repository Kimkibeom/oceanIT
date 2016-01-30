<%--
  Class Name : login.jsp
  Description : 로그인화면 center (include)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2016.01.24   김기범       최초 파일 생성
 
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css" >
<link href="<c:url value='/css/login.css'/>" rel="stylesheet" type="text/css" >
<script type="text/javascript">
function actionLogin() {
    if (document.loginForm.member_id.value =="") {
        alert("학번을 입력하세요");
        return false;
    } else if (document.loginForm.password.value =="") {
        alert("비밀번호를 입력하세요");
        return false;
    } else {
        document.loginForm.action="<c:url value='/securityLogin.do'/>";
        //document.loginForm.j_username.value = document.loginForm.userSe.value + document.loginForm.username.value;
        //document.loginForm.action="<c:url value='/j_spring_security_check'/>";
        document.loginForm.submit();
    }
}

function saveid(form) {
    var expdate = new Date();
    // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
    if (form.checkId.checked)
        expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
    else
        expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
    setCookie("saveid", form.id.value, expdate);
}

function fnInit() {
    var message = document.loginForm.message.value;
    if (message != "") {
        alert(message);
    }
    getid(document.loginForm);
}

function getid(form) {
    form.checkId.checked = ((form.id.value = getCookie("saveid")) != "");
}


</script>
</head>
<body  onload="fnInit();">
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>
<!-- 전체 레이어 시작 -->
<div id="wrap">
	<!-- header 시작 -->
	<div id="header"><c:import url="/PageLink.do?link=main/inc/IncHeader" /></div>
	<div id="topnavi"><c:import url="/mainBoardList.do" /></div>
	<!-- header 끝 -->
	<div id="container">
		<!-- 좌측 메뉴 시작 -->
		<div id="leftmenu"><c:import url="/PageLink.do?link=main/inc/IncLeftMenu" /></div>
		<!-- 좌측 메뉴 끝 -->
		
		<!-- content 시작 -->
		<div id="content">
			<div id="cur_loc">
                    <div id="cur_loc_align">
                        <ul>
                            <li><strong>로그인</strong></li>
                        </ul>
                    </div>                  
                </div>

                    <div id="login_title_div"><img alt="LOGIN 해양IT학과에 오신 것을 환영합니다" src="<c:url value='/' />images/login/img_logintitle.gif" /></div>        
                        <div class="user_login">
                        <form id="loginForm" name="loginForm" method="post">
                            <fieldset><legend>조건정보 영역</legend>
                                
                                <div class="user_login_ultop">
                                    <table border="0">
                                    	<tr>
                                    		<td>학번</td>
                                    		<td><input type="text" class="input_style" title="아이디를 입력하세요." id="member_id" name="member_id" maxlength="8"/></td>
                                    		<td rowspan="2"><input type="image" alt="로그인" onclick="javascript:actionLogin()" src="<c:url value='/'/>images/login/btn_login.gif"  /></td>
                                    	</tr>
                                    	<tr>
                                    		<td>비밀번호</td>
                                    		<td><input type="password" class="input_style" maxlength="25" title="비밀번호를 입력하세요." id="password" name="password" 
                                               onkeydown="javascript:if (event.keyCode == 13) { actionLogin(); }"/></td>
                                    	</tr>
                                    	<tr>
                                    		<td><input type="checkbox" name="checkId" title="학번 저장여부" onclick="javascript:saveid(this.form);" id="checkId" />&nbsp;학번 저장</td>
                                    	</tr>
                                    </table>
                                </div>
                            </fieldset>
                            <input type="hidden" name="message" value="${message}" />
                            <input type="hidden" name="userSe"  value="USR"/>
                            <input name="j_username" type="hidden"/>
                       </form>
                        </div>
		</div>
		<!-- content 끝 -->
	</div>
	<div id="footer"><c:import url="/PageLink.do?link=main/inc/IncFooter" /></div>
</div>


</body>
</html>