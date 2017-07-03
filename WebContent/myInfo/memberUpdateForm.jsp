<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/open-clapperboard-.png.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>MYCGV:회원정보수정</title>
<script>
	$(document).ready(function(){
		$('#birthday-pick').blur(function(){
			$('#m_birth').val($('#birthday-pick').value)
			});
		});
</script>
</head>
<body>
<div>
<%@ include file="/module/top.jsp" %>
        <!-- LineMap -->

<div>
       <ul>
           <li>
           	<a href="${pageContext.request.contextPath}/index.movie">
           		<img alt="home" src="${pageContext.request.contextPath}/images/common/btn/btn_home.png"/>
           	</a>
           </li>
           <li><a href="${pageContext.request.contextPath}/mycgv.movie">mycgv</a></li>
           <li> MYCGV HOME</li>
       </ul>
   </div>
    <div>
           <ul>
               <li><a href="#">VIP LOUNGE</a></li>
               <li><a href="#" title="새창" class="specialclub">Club서비스</a></li>
               <li><a href="#" title="새창" class="photi" target="_blank">포토티켓</a></li>
           </ul>
   	</div>
</div>
<div>
<%@ include file="/module/user_inofo.jsp" %>
<%@ include file="/module/left.jsp" %>
	<div>
		<h3>개인정보 변경</h3>
	</div>
	<div>
		<p>※ 개명으로 인한 이름변경, 생년월일, Email주소, 휴대폰번호 등 일부 개인정보를 변경 할 수 있습니다.</p>
		<br /><br />
			<form action="${pageContext.request.contextPath}/mycgv/member_update_pro.movie" method="post">
				<table summary="나의 CGV정보 선호장르,주중선호요일,선호시간대,자주가는 CGV, Special Day 표기">
				<caption>나의 CGV정보</caption>
				<colgroup>
					<col width="19%" />
					<col width="*" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">이름</th>
						<td>${member.m_name}</td>
						<td>
							<input id="m_name" name="m_name" type="text" value="${member.m_name}">
						</td> 
					</tr>
					<tr>
						<th scope="row">휴대전화번호</th>
						<td>${member.m_phone}</td>
						<td>
							<input id="m_phone" name="m_phone" type="text" value="${member.m_phone}">
						</td> 
					</tr>
					<tr>
						<th scope="row">Email주소</th>
						<td>${member.m_email}</td>
						<td>
							<input id="m_email" name="email_id" type="text" value="${emailId}">
						 	@
		                    <select id="url" name="email_addr">
		                    <c:choose>
		                    	<c:when test="${emailAddr == 'naver.com'}">
		                    		<option value="naver.com" selected="selected">네이버</option>
			                        <option value="daum.net">다음</option>
			                        <option value="nate.com">네이트</option>
			                        <option value="gamil.com">구글</option>
		                    	</c:when>
		                    	<c:when test="${emailAddr == 'daum.net'}">
		                    		<option value="naver.com">네이버</option>
			                        <option value="daum.net"  selected="selected">다음</option>
			                        <option value="nate.com">네이트</option>
			                        <option value="gamil.com">구글</option>  
		                    	</c:when>
		                    	<c:when test="${emailAddr == 'nate.com'}">
		                    		<option value="naver.com">네이버</option>
			                        <option value="daum.net">다음</option>
			                        <option value="nate.com"  selected="selected">네이트</option>
			                        <option value="gamil.com">구글</option>   
		                    	</c:when>
		                    	<c:otherwise>
		                    		<option value="naver.com">네이버</option>
			                        <option value="daum.net">다음</option>
			                        <option value="nate.com">네이트</option>
			                        <option value="gamil.com" selected="selected">구글</option>   
		                    	</c:otherwise>
		                    </c:choose>
		                    </select>
						</td>
					</tr>
					<tr>
						<th scope="row">생년월일</th>
						<td>${member.m_birth}</td>
						<td>
							<input id="m_birth" name="m_birth" type="date" value="${member.m_birth}">
						</td> 
					</tr>
				</tbody>
			</table>
			<input type="hidden" name="m_id" value="${member.m_id}">
			<button type="submit" class="set-btn round inred on"><span>회원정보 수정</span></button>
		</form>
	</div>			<!-- 150716 : end -->
</div><!-- // 회원정보 수정 컨텐츠 -->
<%@ include file="/module/bottom.jsp" %>
</body>
</html>