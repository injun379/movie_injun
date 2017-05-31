<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" media="all" type="text/css"
	href="./css/reset.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="./css/layout.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="./css/module.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="./css/common.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="./css/content.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="./css/eggupdate.css" />
<link rel="stylesheet" media="print" type="text/css"
	href="./css/print.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="./css/content_1207.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>CGV 메인페이지</title>
</head>
<body class="">
	<div id="cgvwrap">
		<%@ include file="/module/top.jsp"%>
		<div id="header">
			<!-- txt banner -->
			<div id="ctl00_sect_txt_banner" class="sect_txt_banner">
				<div class="inner">
					<a href="#" style="display: block"> <!--배너이미지 경로--> <img
						src="<%=request.getContextPath() %>/images/14890258372960.jpg"
						border="0" />
					</a>
				</div>
			</div>
			<!-- /text banner -->
		</div>
		<div id="contaniner" class="bg-bricks main bg-bricks"
			style="background-color: #fdfcf0;">
			<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
			<div id="contents" class="">
				<div class="sect-common">
					<div class="slider" id="slider">
						<button type="button" class="btn-play">자동 넘기기 시작</button>
						<!-- 비 로그인 시-->
						<div class="item-wrap on">
							<button type="button">DO YOU WANT CGV NEWS?</button>
							<a href="#" class="item"> </a>
						</div>
						<div class="item-wrap on">
							<button type="button">액션블록버스터즈</button>
							<a href="#" class="item"> <img
								src="http://img.cgv.co.kr/Front/Main/2017/0516/14949108960450.jpg"
								alt="액션블록버스터즈" />
							</a>
						</div>
						<div class="item-wrap ">
							<button type="button">킹아서 N차관람</button>
							<a href="#" class="item"> <img
								src="http://img.cgv.co.kr/Front/Main/2017/0512/14945770543750.jpg"
								alt="킹아서 N차관람" />
							</a>
						</div>
						<div class="item-wrap ">
							<button type="button">네버엔딩 홀리데이</button>
							<a href="#" class="item"> <img
								src="http://img.cgv.co.kr/Front/Main/2017/0516/14949230286380.jpg"
								alt="네버엔딩 홀리데이" />
							</a>
						</div>
						<div class="item-wrap ">
							<button type="button">키즈 패밀리</button>
							<a href="#" class="item"> <img
								src="http://img.cgv.co.kr/Front/Main/2017/0512/14945686615350.jpg"
								alt="키즈 패밀리" />
							</a>
						</div>
						<div class="item-wrap ">
							<button type="button">아트하우스_5월</button>
							<a href="#" class="item"> <img
								src="http://img.cgv.co.kr/Front/Main/2017/0508/screen_big.jpg"
								alt="아트하우스_5월" />
							</a>
						</div>
						<button type="button" class="btn-prev">이전 페이지 이동</button>
						<button type="button" class="btn-next">다음 페이지 이동</button>
					</div>
				</div>
				<h3>
					<img
						src="<%= request.getContextPath() %>/images/title/h3_movie_selection.gif"
						alt="MOVIE SELECTION" />
				</h3>
				<div class="cols-movie"></div>
				<h3>
					<img
						src="<%= request.getContextPath() %>/images/title/h3_event.gif"
						alt="EVENT" />
				</h3>
			</div>
		</div>
		<%@ include file="/module/bottom.jsp"%>
	</div>
</body>
</html>