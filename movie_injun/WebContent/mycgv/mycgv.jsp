<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/reset.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/layout.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/module.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/common.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/content.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/eggupdate.css" />
<link rel="stylesheet" media="print" type="text/css" href="<%= request.getContextPath() %>/css/print.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/content_1207.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>MYCGV홈</title>
</head>
<%
	String SID = (String)session.getAttribute("S_ID");
	if(SID == null){
%>
<script language="javascript">
	alert("로그인이 필요한 서비스입니다.");
	location.href = "<%= request.getContextPath() %>/login/loginForm.jsp";
</script>


<%
	}else{
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
						<div class="sect-mycgv-reserve movielog col4">
							<div class="box-polaroid">
								<div class="box-inner wishlist">
									<a href="#" title="위시리스트">
										<h3>위시리스트</h3> <span>보고 싶은 영화들을 미리 <br />담아두고 싶다면?
									</span>
									</a>
								</div>
								<div class="box-inner watched">
									<a href="#" title="내가 본 영화">
										<h3>내가 본 영화</h3> <span>관람한 영화들을 한번에 <br />모아 보고 싶다면?
									</span>
									</a>
								</div>
								<div class="box-inner mvdiary">
									<a href="#" title="무비다이어리">
										<h3>무비다이어리</h3> <span>관람 후 내 감상평을 적어 <br />추억하고 싶다면?
									</span>
									</a>
								</div>
								<div class="box-inner photi">
									<a href="#">
										<h3>포토티켓</h3> <span>단 하나뿐인 나만의<br />티켓을 간직하고 싶다면?
									</span>
									</a>
								</div>
							</div>
						</div>
						<div class="tit-mycgv">
							<h3>MY 예매내역</h3>
							<p>
								<em>0건</em> <a href="/user/mycgv/reserve/">예매내역 더보기</a>
							</p>
							<span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
						</div>

						<form name="aspnetForm" method="post" action="./" id="aspnetForm">
							<div>
								<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET"
									value="" /> <input type="hidden" name="__EVENTARGUMENT"
									id="__EVENTARGUMENT" value="" /> <input type="hidden"
									name="__VIEWSTATE" id="__VIEWSTATE"
									value="/wEPDwULLTEyOTM4ODUwNThkZCgUZJtrOtyLY3o4WRpcH4Pr6VGQ" />
							</div>

							<div>

								<input type="hidden" name="__VIEWSTATEGENERATOR"
									id="__VIEWSTATEGENERATOR" value="F268F2D4" /> <input
									type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
									value="/wEdAANDxPRYWZRAfPmlLUElJRchAAaiyC+ogOIlg3pscMtiP2lKUwCIH8TI/sjrTPJzW355I/Mm0IcS9XYheA2oBYVHdfL7GQ==" />
							</div>
							<!-- 팝업시작 -->
							<!-- 팝업 노출 시 .layer-wrap 에 클래스 .off는 없애고 .on 추가해주세요.-->
							<div class="layer-wrap pop_corp_session logpopup off">
								<div class="pop_wrap">
									<h1>자동 로그아웃 안내</h1>
									<button type="button" class="btn-close">자동 로그아웃 안내 팝업
										닫기</button>
									<div class="pop-contents">
										<div class="sect-corp-session">
											<div class="cf ss_con_wrap">
												<h5>
													자동 로그아웃 남은 시간 : <span class="col_red"><em><span
															id="expTime"></span></em>초</span>
												</h5>
												<p>
													로그인 시간을 연장하시려면 <br />로그인 연장 버튼을 클릭해주세요.
												</p>
											</div>
											<div class="cf ss_btn_wrap">
												<a
													id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton1"
													class="round inblack"
													href="javascript:__doPostBack(&#39;ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton1&#39;,&#39;&#39;)"><span>로그인
														연장</span></a> <a
													id="ctl00_ctl00_PlaceHolderContent_ChildPlaceHolderContents_LinkButton2"
													class="round gray"
													href="javascript:__doPostBack(&#39;ctl00$ctl00$PlaceHolderContent$ChildPlaceHolderContents$LinkButton2&#39;,&#39;&#39;)"><span>로그아웃</span></a>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- 팝업끝 -->
							<!-- MY 예매내역 -->
							<input type="hidden" id="hidCancelReserveNo"
								name="hidCancelReserveNo" />
							<div class="sect-base-booking">
								<div class="box-polaroid">
									<div class="box-inner">



										<div class="lst-item">고객님의 최근 예매내역이 존재하지 않습니다.</div>

									</div>
								</div>
							</div>
						</form>
						<!-- //MY 예매내역 -->

						<!-- MY 참여이력 -->
						<div class="sect-mycgv-part">
							<div class="box-polaroid">
								<div class="box-inner">
									<div class="tit-mycgv">
										<h3>MY 참여이벤트</h3>
										<p>
											<em>0건</em> <a href="#">MY 참여이벤트 더보기</a>
										</p>
									</div>
									<div class="col-myevt">

										<ol>
											<li>고객님의 이벤트 참여내역이 존재하지 않습니다.</li>
										</ol>

									</div>
								</div>
								<div class="box-inner">
									<div class="tit-mycgv">
										<h3>MY Q&amp;A</h3>
										<p>
											<em>0건</em> <a href="#">MY Q&amp;A 더보기</a>
										</p>
									</div>
									<div class="col-myqna">

										<ul>
											<li>고객님의 1:1 문의내역이 존재하지 않습니다.</li>
										</ul>

									</div>
								</div>
							</div>
						</div>
						<!-- //MY 참여이력 -->
						<!-- MY 구매정보 -->
						<div class="sect-mycgv-buying">
							<div class="box-polaroid">
								<div class="box-inner">
									<div class="tit-mycgv">
										<h3>MY 구매정보</h3>
										<span>현재 사용하실 수 있는 쿠폰정보입니다. 상품명을 클릭하시면 내역조회페이지로 이동합니다.</span>
									</div>
									<ul>
										<li class="booth"><a href="#"><strong>매점상품
													기프트콘</strong></a> <span><em>0</em> 개</span></li>
										<li class="viewing"><a href="#"><strong>영화관람권
													기프트콘</strong></a> <span><em>0</em> 개</span></li>
										<li class="funcon"><a href="#"><strong>FUN-CON
													기프트콘</strong></a> <span><em></em>준비중</span></li>
										<li class="collage"><a href="#"><strong>무비꼴라쥬
													패스카드</strong></a> <span><em>0</em> 개</span></li>
									</ul>
								</div>
							</div>
						</div>
						<form name="targetform" id="targetform" method="post"
							novalidate="novalidate">
							<input type="hidden" name="reverse_no" id="reverse_no" />
						</form>


					</div>
				</div>
			</div>
		</div>
		<%@ include file="/module/bottom.jsp"%>

	</div>
</body>
</html>
<%
	}	
%>
