<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title>MYCGV:비밀번호 확인</title>
</head>
<body>
<%@ include file="/module/top.jsp"%>
<div>
	<ul>
		<li><a href="${pageContext.request.contextPath}/index.movie"><img alt="home"
				src="${pageContext.request.contextPath}/images/common/btn/btn_home.png" /></a></li>
		<li><a href="${pageContext.request.contextPath}/mycgv.movie">mycgv</a></li>
		<li class="last">MYCGV HOME</li>
	</ul>
</div>
<div>
	<ul>
		<li><a href="#">VIP LOUNGE</a></li>
		<li><a href="#" title="새창" class="specialclub">Club서비스</a></li>
		<li><a href="#" title="새창" class="photi" target="_blank">포토티켓</a></li>
	</ul>
</div>
<%@ include file="/module/user_inofo.jsp"%>
<%@ include file="/module/left.jsp"%>
<div>
	<div>
		<h3>비밀번호 확인</h3>
	</div>
		<p>고객님의 개인정보 보호를 위한 절차이오니, CGV 로그인 시 사용하는
					비밀번호를 입력해 주세요.</p>
		<form id="form1" method="post" action="${pageContext.request.contextPath}/mycgv/member_update_form.movie">
					<fieldset>
						<legend>비밀번호 확인</legend>
				<div>
					<p>
						<strong>아이디</strong> <strong>${S_ID}</strong>
					</p>
					<p>
						<strong><label for="txtPassword">비밀번호</label></strong> 
						<input type="password" id="txtPassword" name="txtPassword" title="비밀번호" maxlength="20" class="small" /> 
						<input type="hidden" id="loginId" name="loginId" value="${S_ID}">
						<input type="hidden" id="loginPassword" name="loginPassword" value="${S_PW}">
					</p>
				</div>
			</fieldset>
			<div>
				<button type="submit" id="save" class="round inred on">
					<span>확인</span>
				</button>
				<a href="${pageContext.request.contextPath}/main.jsp"
					class="round gray"><span>CGV 첫화면으로</span></a>
			</div>
		</form>
	</div>
<%@ include file="/module/bottom.jsp"%>
</body>
</html>