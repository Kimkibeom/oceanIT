<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import ="com.oceanIT.vo.LoginVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="<c:url value="/js/MainMenu.js"/>"></script>
<div id="LoginStatus">
	<c:choose>
	<c:when test="${LoginVO eq null }">
		<ul>
	  		<li>로그인정보 없음</li>
	  	</ul>
	</c:when>
	<c:otherwise>
		<ul>
			<li><c:out value="${LoginVO.name }"/>님</li>
			<li><a href="<c:url value='/'/>PageLink.do?link=main/logout">
			<img src="<c:url value='/images/leftmenu/logout.jpg' />" alt="로그아웃" /></a></li>
			<li>최근접속:&nbsp;${lastAccessTime }<</li>
		</ul>
	</c:otherwise>
	</c:choose>
</div>
<div id="nav">
	<div class="top"></div>
    <div class="nav_style">
    	<ul>
    		<c:forEach var="kind_of_boardVO" items="${Kind_of_boardVOList }" varStatus="status">
    		<li>
    			<c:choose>
    			<c:when test="${kind_of_boardVO.kind_no eq boardNo }">
    			<strong>${kind_of_boardVO.name }</strong>
    			</c:when>
    			<c:otherwise>
    				<ul>
    					<li><a href="/controller/sendFromLeft.do?no=${kind_of_boardVO.kind_no}">${kind_of_boardVO.name }</a></li>
    				</ul>
    			</c:otherwise>
    			</c:choose>
    		</li>
    		</c:forEach>
    	</ul>
    </div>
	<div class="bottom"></div>
</div>
