<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/reset.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/layout.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/module.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/common.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/content.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/eggupdate.css" />
<link rel="stylesheet" media="print" type="text/css"
	href="<%= request.getContextPath() %>/css/print.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/content_1207.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>MYCGV:비밀번호 확인</title>
</head>
<%
	String SID = (String)session.getAttribute("S_ID");
	String S_PW = (String)session.getAttribute("S_PW");
%>
<body class="">
	<div id="cgvwrap">
		<%@ include file="/module/top.jsp"%>
		<div id="contaniner" class="bg-bricks"
			style="background-color: #fdfcf0;">
			<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

			<!-- LineMap -->

			<div id="ctl00_navigation_line" class="linemap-wrap">
				<div class="sect-linemap">
					<div class="sect-bcrumb">
						<ul>
							<li><a href="#"><img alt="home"
									src="../images/common/btn/btn_home.png" /></a></li>
							<li><a href="#">mycgv</a></li>
							<li class="last">MYCGV HOME</li>
						</ul>
					</div>
					<div class="sect-special">
						<ul>
							<li><a href="#">VIP LOUNGE</a></li>
							<li><a href="#" title="새창" class="specialclub">Club서비스</a></li>
							<li><a href="#" title="새창" class="photi" target="_blank">포토티켓</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="contents" class="">
				<%@ include file="/module/user_inofo.jsp"%>
				<div class="cols-content" id="menu">

					<%@ include file="/module/left.jsp"%>
					<div class="col-detail" id="mycgv_contents">
						<div class="tit-mycgv">
							<h3>비밀번호 확인</h3>
						</div>
						<p class="info-com">고객님의 개인정보 보호를 위한 절차이오니, CGV 로그인 시 사용하는
							비밀번호를 입력해 주세요.</p>
						<form id="form1" method="post" action="./memberUpdateForm.jsp">
							<fieldset class="confirm">
								<legend>비밀번호 확인</legend>
								<div class="info-confirm">
									<p>
										<strong>아이디</strong> <strong><%= SID %></strong>
									</p>
									<p>
										<strong><label for="txtPassword">비밀번호</label></strong> <input
											type="password" id="txtPassword" name="txtPassword"
											title="비밀번호" maxlength="20" class="small" /> <input
											type="hidden" id="loginId" name="loginId" value="<%= SID %>">
										<input type="hidden" id="loginPassword" name="loginPassword"
											value="<%= S_PW %>">
									</p>
								</div>
							</fieldset>
							<div class="set-btn">
								<button type="submit" id="save" class="round inred on">
									<span>확인</span>
								</button>
								<a href="<%= request.getContextPath() %>/main.jsp"
									class="round gray"><span>CGV 첫화면으로</span></a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/module/bottom.jsp"%>

</body>
</html>