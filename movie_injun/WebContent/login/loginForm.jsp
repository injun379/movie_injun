<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/layout.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/reset.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/module.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/common.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/content.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/eggupdate.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="<%= request.getContextPath() %>/css/content_1207.css" />
<link rel="stylesheet" media="print" type="text/css"
	href="<%= request.getContextPath() %>/css/print.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>CGV로그인</title>
</head>
<body class="">
	<div id="cgvwrap">
		<%@ include file="/module/top.jsp"%>
		<div id="contaniner" class="">
			<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

			<!-- LineMap -->

			<div id="ctl00_navigation_line" class="linemap-wrap">
				<div class="sect-linemap">
					<div class="sect-bcrumb">
						<ul>
							<li><a href="#"><img alt="home"
									src="../images/common/btn/btn_home.png" /></a></li>
							<li><a href="#">회원서비스</a></li>
							<li class="last">로그인</li>


						</ul>
					</div>
					<div class="sect-special">
						<ul>

							<li><a href="/user/vip-lounge/">VIP LOUNGE</a></li>
							<li><a href="/user/memberShip/ClubService.aspx" title="새창"
								class="specialclub">Club서비스</a></li>
							<li><a href="http://phototicket.cgv.co.kr/" title="새창"
								class="photi" target="_blank">포토티켓</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- //LineMap -->

			<!-- Contents Area -->
			<div id="contents" class="">

				<!-- Contents Start -->



				<!-- 실컨텐츠 시작 -->
				<div class="wrap-login">
					<div class="sect-login">
						<ul class="tab-menu-round">
							<li class="on"><a href="#">로그인</a></li>
							<li><a href="/user/guest/">비회원로그인</a></li>
						</ul>
						<div class="box-login login_1408">
							<h3 class="hidden">회원 로그인</h3>

							<!-- ********************* 비밀번호 5회 오류시 캡챠 포함된 form#form2_capcha 시작 ********************* -->

							<form id="form2_capcha" method="post"
								action="<%=request.getContextPath() %>/login/loginPro.jsp"
								style="display: block;">
								<fieldset>
									<legend>회원 로그인</legend>
									<div class="txt_wrap">
										<h3></h3>
										<!-- <p>정보보호를 위해 아이디, 비밀번호와 함께 <br />자동 입력 방지 문자를 입력하셔야 합니다.</p>-->
										<p>
											귀하의 정보보호를 위해 실제 사용자가<br />요청을 보내고 있는지 <br />확인하는 절차를 거치고
											있습니다.
										</p>
									</div>
									<div class="login">
										<input type="text" title="아이디" id="txtUserId" name="txtUserId"
											data-title="아이디를 " data-message="입력하세요." value="" /> <input
											type="password" title="패스워드" id="txtPwd1" name="txtPwd1"
											data-title="패스워드를 " data-message="입력하세요." />
									</div>

									<button type="submit" id="submit" title="로그인">
										<span>로그인</span>
									</button>
									<div class="login-option">
										<a href="#">아이디 찾기</a> <a href="#">비밀번호 찾기</a>
									</div>
								</fieldset>
							</form>
							<!-- ********************* 비밀번호 5회 오류시 캡챠 포함된 form#form2_capcha 끝 ********************* -->
						</div>
					</div>
					<div class="sect-loginad" style="background: #d2cbbe;">
						<div>
							<iframe
								src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Login_bigbanner"
								width="350" height="300" title="" frameborder="0" scrolling="no"
								marginwidth="0" marginheight="0" name="Login_bigbanner"
								id="Login_bigbanner"></iframe>
						</div>
					</div>
				</div>
				<!-- 실컨텐츠 끝 -->
				<form name="loginform" id="loginform" method="post"
					action="https://www.cgv.co.kr/user/login/login.aspx"
					novalidate="novalidate">
					<input type="hidden" name="id" id="id" /> <input type="hidden"
						name="password" id="password" /> <input type="hidden"
						name="id_save" id="id_save" /> <input type="hidden"
						name="returnURL" value="http://www.cgv.co.kr" />
				</form>
			</div>
		</div>
	</div>
	<%@ include file="/module/bottom.jsp"%>
</body>
</html>