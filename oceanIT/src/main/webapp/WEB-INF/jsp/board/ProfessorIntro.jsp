
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
<script type="text/javascript" src="//code.jquery.com/jquery.min.js"></script>
<style type="text/css">
.mw_layer{display:none;position:fixed;_position:absolute;top:0;left:0;z-index:10000;width:100%;height:100%}

.mw_layer.open{display:block}

.mw_layer .bg{position:absolute;top:0;left:0;width:100%;height:100%;background:#000;opacity:.5;filter:alpha(opacity=50)}

#layer{position:absolute;top:40%;left:40%;width:600px;height:500px;margin:-150px 0 0 -194px;padding:28px 28px 0 28px;border:2px solid #555;background:#fff;font-size:12px;font-family:Tahoma, Geneva, sans-serif;color:#767676;line-height:normal;white-space:normal}
</style>
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
					<c:forEach var="list" items="${ProfessorVO }" varStatus="status">
							<c:choose>
								<c:when test="${list.professor_no % 2 ne 0 }">
									<tr>
										<th style="border: solid #d1d1d1 1px; width: 46%; margin: 10px">
											<div style="border: padding: 5px; width: 410px; height: 140px">
												<a href="#layer" onclick="openContent('${list.professor_no}')"><img src="<c:url value='/'/>images/boards/professorcards/${list.professor_name}.jpg"></a>
											</div>
										</th>
									<c:if test="${list.professor_no eq 9 }">
										</tr>
									</c:if>
								</c:when>
								<c:otherwise>
										<th style="border: solid #d1d1d1 1px; width: 46%; margin: 10px">
											<div style="border: padding: 5px; width: 410px; height: 140px">
												<a href="#layer" onclick="openContent('${list.professor_no}')"><img src="<c:url value='/'/>images/boards/professorcards/${list.professor_name}.jpg"></a>
											</div>
										</th>
									</tr>
								</c:otherwise>
							</c:choose>
					</c:forEach>
				</table>
			</div>
			</div>
		</div>
		<div id="footer"><c:import url="/PageLink.do?link=main/inc/IncFooter" /></div>
		<div class="mw_layer">

		<div class="bg"></div>

		<div id="layer"></div>

		</div>
</div>
<script type="text/javascript">
	function openContent(professor_no){
		$('.mw_layer').addClass('open');
		$ajax({
			type:'POST',
			data:({
				professor_no:professor_no
			}),
			dataType: 'json',
			url:'<c:url value='/selectProfessor.do'/>',
			success: function(returnData, textStatus, xhr){
				var input;
				$('#layer').html(input);
			},
			error: function(xhr, status, e){
				alert(e);
			}
		})
	}
	
	$(function(){
		var layerWindow = $('.mw_layer');
		
		//ESC Event
		$(document).keydown(function(event){
			if(event.keyCode != 27) return true;
			if(layerWindow.hasClass('open')){
				layerWindow.removeClass('open');
			}
			
			return false;
		})
	})
</script>
</body>
</html>