<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="${pageContext.request.contextPath}/index.movie">Home</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <c:choose> 
			<c:when test="${S_LEVEL == null}"> 
				<li><a href="" class="btn-link" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in">로그인</span></a></li>
				<li><a href="${pageContext.request.contextPath}/join.movie"><span>회원가입</span></a></li>
			</c:when> 
			<c:when test="${S_LELVEL == '관리자'}"> 
				<li><a href="${pageContext.request.contextPath}/join.movie"><span>회원가입</span></a></li>
				<li><a href="${pageContext.request.contextPath}/login/logout.movie"><span>로그아웃</span></a></li>
			</c:when> 
			<c:otherwise> 
				<li><a href="${pageContext.request.contextPath}/login/logout.movie"><span>로그아웃</span></a></li>
			</c:otherwise> 
		</c:choose>
		<li><a href="${pageContext.request.contextPath}/myInfo.movie"><span>내 정보</span></a></li>
		<!-- 2014.12.8 리뉴얼-->
		<li><a href="#"><span>고객센터</span></a></li>
		<!-- 2014.12.8 리뉴얼-->
		<li><a href="#"><span>사이트맵</span></a></li>
      </ul>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-center">
		<li><a href="${pageContext.request.contextPath}/movie/movieFinder.jsp">영화</a>
		<li><a href="${pageContext.request.contextPath}/ticket/movieBookingForm.jsp">예매</a>
		<li><a href="#">극장</a>
		<li><a href="#">이벤트&amp;컬쳐</a>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      	<li style="color:gray;">통합검색   
			<input type="text" title="통합검색" id="header_keyword" name="header_keyword" maxlength="20" /> 
			<input type="hidden" id="header_ad_keyword" name="header_ad_keyword" />
			<button class="btn-link" type="button" id="btn_header_search">검색</button>
		</li>
      </ul>
    </div>
  </div>
</nav>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">
        	로그인
        </h4>
      </div>
      <div class="modal-body">
      	<form method="post" action="<%=request.getContextPath() %>/login/login_pro.movie">
      		<div class="input-group">
      			<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      			<input type="text" name="login_id" class="form-control">
      		</div>
      		<br>
      		<div class="input-group">
      			<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      			<input type="password" name="login_pw" class="form-control">
      		</div>
      		<br>
      		<div class="modal-footer">
		      	<button type="submit" class="btn btn-primary">로그인</button>
		        <button type="button" class="btn btn-default" id="closeBtn" data-dismiss="modal">닫기</button>
		    </div>
      	</form>
      </div>
    </div>
  </div>
</div>