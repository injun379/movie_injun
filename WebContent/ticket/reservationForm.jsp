<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CGV 빠른예매</title>
<script type="text/javascript">
	
	function select_seat(seat) {
		$(seat).attr('class','seat selected');
	}
	$(document).ready(function(){
		
		// 영화 정렬 버튼
		// 예매율순 
		$('#movieSortRankBtn').click(function(){
			$('#movieSortRankBtn').attr('class','button btn-rank selected');
			$('#movieSortNameBtn').attr('class','button btn-abc');
		});
		// 가나다순
		$('#movieSortNameBtn').click(function(){
			$('#movieSortRankBtn').attr('class','button btn-rank' );
			$('#movieSortNameBtn').attr('class','button btn-abc selected');
		});

		// 영화 선택
		var selected_movie = '0';
		$('#movie_1').click(function(){
			selected_movie = 1;
			return selected_movie;
		});
		$('#movie_2').click(function(){
			selected_movie = 2;
			return selected_movie;
		});
		if(selected_movie = 1) {
			$('#movie_1').attr('class','selected');
		} else if(selected_movie = 2) {
			$('#movie_2').attr('class','selected');
		}
		
		// 극장 선택
		$('#branch_1').click(function(){
			$(this).attr('class','selected');
			$('#branch_2').attr('class','');
		});
		$('#branch_2').click(function(){
			$(this).attr('class','selected');
			$('#branch_1').attr('class','');
		});
		$('#branch_2').click(function(){
			$(this).attr('class','selected');
			$('#branch_1').attr('class','');
		});
		$('#branch_2').click(function(){
			$(this).attr('class','selected');
			$('#branch_1').attr('class','');
		});
		$('#branch_2').click(function(){
			$(this).attr('class','selected');
			$('#branch_1').attr('class','');
		});

	});
</script>
<%
	String step = request.getParameter("step");
	if(step.equals("2")) {
		
	}
%>
</head>
<body>
<a name="t"></a>
<div id="wrap">
	<!-- 컨텐츠 -->
	<div id="container">
		<!-- 빠른예매 -->
		<div id="ticket" class="ticket ko">
			
			<!-- 타이틀 -->
			<div class="navi">
				<div  class="newsletter">
					<p><a href="#">Click here</a> if you want to receive newsletter about English subtitle movies</p>
				</div>
				<span class="right">
					<a class="button button-english" href="#"><span>ENGLISH</span></a>
					<a class="button button-guide" href="#"><span>예매가이드 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span></a>
					<a class="button button-discount" href="#"><span>제휴할인혜택</span></a>
					<a class="button button-schedule" href="#"><span>상영시간표</span></a>
					<a class="button button-reservation-restart" href="#"><span>예매 다시하기</span></a>
				</span>
				<div class="ie7_sucks" id="ie7_sucks"><span>Internet Explorer 9 이상에서 최적화된 서비스 이용이 가능합니다.</span></div>
			</div>
			<!-- //타이틀 -->
			<!-- 메인컨텐츠 -->
			<div class="steps">
				<!-- step1 영화, 극장, 상영관, 시간 선택 -->
				<div class="step step1">
					<!-- MOVIE 섹션 -->
					<div class="section section-movie">
						<!-- col-head -->
						<div class="col-head" id="skip_movie_list">
							<h3 class="sreader">영화</h3>
							<a href="#" class="skip_to_something">영화선택 건너뛰기</a>
						</div>
						<!-- col-body -->
						<div class="col-body">
							<!-- 영화선택 -->
							<div class="movie-select">
								<div class="tabmenu">
									<span class="side on"></span>
									<a href="#" class="button menu1 selected">전체</a>
									<span class="side on"></span>
									<a href="#" class="button menu2">아트하우스<span class="arrow"></span></a>
									<div class="tabmenu-selectbox MOVIECOLLAGE" style="display:none;">
										<ul>
											<li><a href="#">전체</a></li>
											<li><a href="#">최신작</a></li>
										</ul>
									</div>
									<span class="side"></span>
									<a href="#" onclick="return false;" class="button menu3">특별관<span class="arrow"></span></a>
									<div class="tabmenu-selectbox SPECIALTHEATER" style="display:none;">
										<ul>
											<li><a href="#">전체</a></li>
											<li><a href="#">4DX</a></li>
											<li><a href="#">IMAX</a></li>
											<li><a href="#">STARIUM</a></li>
											<li><a href="#">CINE DE CHEF</a></li>
											<li><a href="#">GOLD CLASS</a></li>
											<li><a href="#">Brand관</a></li>
											<li><a href="#">Premium관</a></li>
											<li><a href="#">CINE KIDS</a></li>
										</ul>
									</div>
									<span class="side"></span>
								</div>
								<div class="sortmenu">
									<a href="#" id="movieSortRankBtn" class="button btn-rank selected">예매율순</a>
									<a href="#" id="movieSortNameBtn" class="button btn-abc">가나다순</a>
								</div>
								<div class="movie-list nano has-scrollbar has-scrollbar-y" id="movie_list" style="height: 462px;">
									<ul class="content scroll-y" style="right: -17px;">
										<li class="rating-15" id="movie_1">
											<a href="#">
												<span class="icon">&nbsp;</span>
												<span class="text">하루</span>
												<span class="sreader"></span>
											</a>
										</li>
										<li class="rating-15" id="movie_2">
											<a href="#">
												<span class="icon">&nbsp;</span>
												<span class="text">미이라</span>
												<span class="sreader"></span>
											</a>
										</li>
									</ul>
								</div>
								<div class="selectbox-movie-type" style="display:none;">
									<a href="#" class="btn-close">영화속성 레이어 닫기</a>
									<ul>
										<li id="sbmt_all" class="GROUP1 ALL"><a href="#">전체</a></li>
										<li id="sbmt_digital" class="GROUP1 DIGITAL proplist"><a href="#">2D</a></li>
										<li id="sbmt_imax" class="GROUP1 IMAX proplist"><a href="#">IMAX</a></li>
										<li id="sbmt_4dx" class="GROUP1 4DX proplist"><a href="#">4DX</a></li>
										<li id="sbmt_soundx" class="GROUP1 SOUNDX proplist"><a href="#">SOUNDX</a></li>
										<li id="sbmt_screenx" class="GROUP1 SCREENX proplist"><a href="#">SCREENX</a></li>
										<li id="sbmt_3d" class="GROUP1 3D proplist"><a href="#">3D</a></li>
										<li id="sbmt_dubbing" class="GROUP2 DUBBING proplist"><a href="#">더빙</a></li>
										<li id="sbmt_subtitle" class="GROUP2 SUBTITLES proplist"><a href="#">자막</a></li>
										<li id="sbmt_lovemom" class="GROUP3 LOVEMOM proplist"><a href="#">러브맘</a></li>
										<li id="sbmt_liveTalk" class="GROUP3 LIVETALK proplist"><a href="#">스타라이브톡</a></li>
										<li id="sbmt_wheelchairAccess" class="GROUP3 WHEELCHAIRACCESS proplist"><a href="#">배리어프리</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- THEATER 섹션 -->
					<div class="section section-theater">
						<!-- col-head -->
						<div class="col-head" id="skip_theater_list">
							<h3 class="sreader">극장</h3>
							<a href="#" class="skip_to_something">극장선택 건너뛰기</a>
						</div>
						<!-- col-body -->
						<div class="col-body">
							<!-- 자주가는 CGV -->
							<!-- <div class="favorite_cgv" id="favorite_cgv" style="height: 72px;">
								<p class="tit"></p>
								<p class="setting" style="display:none;"><a href="#" class="btn_setting">설정 &gt;</a></p>
								<ul class="theaters" style="width: 225px; left: 5px; top: 10px;">
									<li theatercode="0179" style="display: inline-block; width: 45%; height: 20px;">
										<a href="#">CGV전주효자</a>
									</li>
								</ul>
								<div class="nolist">
										자주가는 CGV를
									<br>
										등록해주세요
								</div>
							</div> -->
							<!-- 극장선택 -->
							<div class="theater-select">
								<div class="tabmenu">
									<span class="side on"></span>
									<a href="#" class="button menu1 selected">전체</a>
									<span class="side on"></span>
									<a href="#" class="button menu2">아트하우스</a>
									<span class="side"></span>
									<a href="#" class="button menu3">특별관</a>
									<span class="side"></span>
								</div>
								<div class="theater-list" style="height: 388px;">
									<div class="theater-area-list" id="theater_area_list">
										<ul>
											<li class="selected">
												<a href="#">
													<span class="name">전북</span>
													<span class="count"></span>
												</a>
												<div class="area_theater_list nano has-scrollbar has-scrollbar-y" style="height: 388px;">
													<ul class="content scroll-y" style="right: -17px;">
														<li id="branch_1" style="display: list-item;">
															<a href="#">
																전주고사
																<span class="sreader">선택됨</span>
															</a>
														</li>
														<li id="branch_2" style="display: list-item;">
															<a href="#">
																전주효자
																<span class="sreader"></span>
															</a>
														</li>
														<li id="branch_3" style="display: list-item;">
															<a href="#">
																군산
																<span class="sreader"></span>
															</a>
														</li>
														<li id="branch_4" style="display: list-item;">
															<a href="#">
																정읍
																<span class="sreader"></span>
															</a>
														</li>
														<li id="branch_5" style="display: list-item;">
															<a href="#">
																익산
																<span class="sreader"></span>
															</a>
														</li>
													</ul>
												</div>
											</li>
											<li>
												<a href="#">
													<span class="name">전남</span>
													<span class="count"></span>
												</a>
												<div class="area_theater_list nano has-scrollbar has-scrollbar-y">
													<ul class="content scroll-y" tabindex="-1" style="right: -17px;">
														<li class data-index="7" areaindex="8" theater_cd="0220" rating_cd="undefined" style="display: list-item;">
															<a href="#">
																광주
																<span class="sreader"></span>
															</a>
														</li>
													</ul>
												</div>
											</li>
											<li><a href="#"><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#"><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#"><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#"><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#"><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#"><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#"><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
											<li><a href="#"><span class="name"></span><span class="count"></span></a><div class="area_theater_list nano"><ul class="content scroll-y"></ul></div></li>
										</ul>
									</div>
									<div class="theater-cgv-list nano" id="theater_cgv_list">
										<ul class="content scroll-y"></ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- DATE 섹션 -->
					<div class="section section-date">
						<div class="col-head" id="skip_date_list">
							<h3 class="sreader">날짜</h3>
							<a href="#"class="skip_to_something">날짜 건너뛰기</a>
						</div>
						<div class="col-body">
							<!-- 날짜선택 -->
							<div class="date-list nano has-scrollbar has-scrollbar-y" id="date_list" style="height: 522px;">
								<ul class="content scroll-y" tabindex="-1" style="right: -17px;">
									<li class="month dimmed">
										<div>
											<span class="year">2017</span>
											<span class="month">6</span>
											<div></div>
										</div>
									</li>
									<li data-index="0" date="20170614" class="day selected">
										<a href="#" >
											<span class="dayweek">수</span>
											<span class="day">14</span>
											<span class="sreader">선택됨</span>
										</a>
									</li>
									<li data-index="1" date="20170615" class="day">
										<a href="#" >
											<span class="dayweek">목</span>
											<span class="day">15</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="2" date="20170616" class="day">
										<a href="#" >
											<span class="dayweek">금</span>
											<span class="day">16</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="3" date="20170617" class="day">
										<a href="#" >
											<span class="dayweek">토</span>
											<span class="day">17</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="4" date="20170618" class="day">
										<a href="#" >
											<span class="dayweek">일</span>
											<span class="day">18</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="5" date="20170619" class="day">
										<a href="#" >
											<span class="dayweek">월</span>
											<span class="day">19</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="6" date="20170620" class="day">
										<a href="#" >
											<span class="dayweek">화</span>
											<span class="day">20</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="7" date="20170621" class="day">
										<a href="#" >
											<span class="dayweek">수</span>
											<span class="day">21</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="8" date="20170622" class="day">
										<a href="#" >
											<span class="dayweek">목</span>
											<span class="day">22</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="9" date="20170623" class="day">
										<a href="#" >
											<span class="dayweek">금</span>
											<span class="day">23</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="10" date="20170624" class="day">
										<a href="#" >
											<span class="dayweek">토</span>
											<span class="day">24</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="11" date="20170625" class="day">
										<a href="#" >
											<span class="dayweek">일</span>
											<span class="day">25</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="12" date="20170626" class="day">
										<a href="#" >
											<span class="dayweek">월</span>
											<span class="day">26</span>
											<span class="sreader"></span>
										</a>
									</li>
									<li data-index="13" date="20170627" class="day">
										<a href="#" >
											<span class="dayweek">화</span>
											<span class="day">27</span>
											<span class="sreader"></span>
										</a>
									</li>
								</ul>
								<div class="pane pane-y" style="display: block; opacity: 1; visibility: visible;">
									<div class="slider slider-y" style="height: 50px; top: 0px;"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- TIME 섹션 -->
					<div class="section section-time">
						<div class="col-head" id="skip_time_list">
							<h3 class="sreader">시간</h3>
							<a href="#" class="skip_to_something">시간선택 건너뛰기</a>
						</div>
						<div class="col-body">
							<!-- 시간선택 -->
							<div class="time-option">
								<span class="morning">조조</span><span class="night">심야</span>
							</div>
							<!-- <div class="placeholder">영화, 극장, 날짜를 선택해주세요.</div> -->
							<div class="time-list nano has-scrollbar">
								<div class="content scroll-y" tabindex="-1" style="right: -17px;">
									<div class="theater" screen_cd="011" movie_cd="20012795">
										<span class="title">
											<span class="name">2D</span>
											<span class="floor">11관</span>
											<span class="seatcount">(총123석)</span>
										</span>
										<ul>
											<li data-index="0" data-remain_seat="123"  play_start_tm="1805" screen_cd="011" movie_cd="20012795" play_num="5">
												<a class="button" href="#">
													<span class="time">
														<span>18:05</span>
													</span>
													<span class="count">95석</span>
													<div class="sreader">종료시간 19:45</div>
													<span class="sreader mod"></span>
												</a>
											</li>
											<li data-index="1" data-remain_seat="123"  play_start_tm="2010" screen_cd="011" movie_cd="20012795" play_num="6" class="selected">
												<a class="button" href="#">
													<span class="time">
														<span>20:10</span>
													</span>
													<span class="count">88석석</span>
													<div class="sreader">종료시간 21:50</div>
													<span class="sreader mod"></span>
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- //step1 -->
				<!-- step2 좌석 선택 -->
				<div class="step step2" style="display:none;">
					<!-- SEAT 섹션 -->
					<div class="section section-seat">
						<div class="col-head" id="skip_seat_list">
							<h3 class="sreader">
								인원 / 좌석
								<span class="sreader">인원/좌석선택은 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
							</h3>
							<a href="#" class="skip_to_something">인원/좌석선택 건너뛰기</a>
						</div>
						<div class="col-body">
							<div class="person_screen">
								<!-- NUMBEROFPEOPLE 섹션 -->
								<div class="section section-numberofpeople">
									<div class="col-body">
										<div class="numberofpeople-select">
											<div class="group adult" id="nop_group_adult">
												<span class="title">일반</span>
												<ul>
													<li data-count="0" class="selected"><a href="#"><span class="sreader mod">일반</span>0<span class='sreader'>명</span></a></li>
													<li data-count="1"><a href="#"><span class="sreader mod">일반</span>1<span class='sreader'>명</span></a></li>
													<li data-count="2"><a href="#"><span class="sreader mod">일반</span>2<span class='sreader'>명</span></a></li>
													<li data-count="3"><a href="#"><span class="sreader mod">일반</span>3<span class='sreader'>명</span></a></li>
													<li data-count="4"><a href="#"><span class="sreader mod">일반</span>4<span class='sreader'>명</span></a></li>
													<li data-count="5"><a href="#"><span class="sreader mod">일반</span>5<span class='sreader'>명</span></a></li>
													<li data-count="6"><a href="#"><span class="sreader mod">일반</span>6<span class='sreader'>명</span></a></li>
													<li data-count="7"><a href="#"><span class="sreader mod">일반</span>7<span class='sreader'>명</span></a></li>
													<li data-count="8"><a href="#"><span class="sreader mod">일반</span>8<span class='sreader'>명</span></a></li>
												</ul>
											</div>
											<div class="group youth" id="nop_group_youth">
												<span class="title">청소년</span>
												<ul>
													<li data-count="0" class="selected"><a href="#"><span class="sreader mod">청소년</span>0<span class='sreader'>명</span></a></li>
													<li data-count="1"><a href="#"><span class="sreader mod">청소년</span>1<span class='sreader'>명</span></a></li>
													<li data-count="2"><a href="#"><span class="sreader mod">청소년</span>2<span class='sreader'>명</span></a></li>
													<li data-count="3"><a href="#"><span class="sreader mod">청소년</span>3<span class='sreader'>명</span></a></li>
													<li data-count="4"><a href="#"><span class="sreader mod">청소년</span>4<span class='sreader'>명</span></a></li>
													<li data-count="5"><a href="#"><span class="sreader mod">청소년</span>5<span class='sreader'>명</span></a></li>
													<li data-count="6"><a href="#"><span class="sreader mod">청소년</span>6<span class='sreader'>명</span></a></li>
													<li data-count="7"><a href="#"><span class="sreader mod">청소년</span>7<span class='sreader'>명</span></a></li>
													<li data-count="8"><a href="#"><span class="sreader mod">청소년</span>8<span class='sreader'>명</span></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<!-- 인접좌석 -->
								<div class="adjacent_seat_wrap">
									<div class="adjacent_seat" id="adjacent_seat">
										<span class="title">좌석 붙임 설정</span>
										<div class="block_wrap">
											<span class="seat_block block1"><label><input type="radio" name="adjacent_seat" disabled><span class="box"></span><span class="sreader">1석 좌석붙임</span></label></span>
											<span class="seat_block block2"><label><input type="radio" name="adjacent_seat" disabled><span class="box"></span><span class="box"></span><span class="sreader">2석 좌석붙임</span></label></span>
											<span class="seat_block block3"><label><input type="radio" name="adjacent_seat" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">3석 좌석붙임</span></label></span>
											<span class="seat_block block4"><label><input type="radio" name="adjacent_seat" disabled><span class="box"></span><span class="box"></span><span class="box"></span><span class="box"></span><span class="sreader">4석 좌석붙임</span></label></span>
										</div>
									</div>
								</div>
								<!-- NUMBEROFPEOPLE 섹션 -->
								<div class="section section-screen-select">
									<div id="user-select-info">
										<p class="theater-info">
											<span class="site">CGV 익산</span>
											<span class="screen">2관 5층</span>
											<span class="seatNum">남은좌석  <b class="restNum">163</b>/<b class="totalNum">207</b></span>
										</p>
										<p class="playYMD-info"><b>2017.06.17</b><b class="exe">(토)</b><b>12:00 - 14:00</b></p>
									</div>	
									<a class="change_time_btn" href="#"><span>상영시간 변경하기</span></a>
								</div>
							</div>
							<!-- THEATER -->
							<div class="theater_minimap">
								<div class="theater nano has-scrollbar has-scrollbar-y" id="seat_minimap_nano">
									<div class="content" style="right: -17px; bottom: -17px;">
										<div class="screen" title="SCREEN" style="width: 652px;">
											<span class="text"></span>
										</div>
										<div class="seats" id="seats_list" style="width: 256px; height: 224px;">
											<div>
												<% for(char ch='A'; ch<='L'; ch++) {%>
												<div class="row" style="top:<%=(ch-65)*16 %>px;">
													<div class="label"><%=ch %></div>
													<a href="#" class="skip_row"><%=ch %>열 건너뛰기</a>
													<div class="seat_group">
														<div class="group">
														<% for(int i=1; i<=15; i++) {%>
															<div class="seat" style="left:<%=i*16 %>px" onclick="select_seat(this);">
																<a href="#">
																	<span class="no"><%=i %></span>
																	<span class="sreader"></span>
																	<span class="sreader mod"></span>
																</a>
															</div>
														<% } %>
														</div>
													</div>
												</div>
												<% } %>
											</div>
											<div></div>
										</div>	
									</div>
								</div>
								<div class="minimap opened" id="minimap">
									<div class="mini_header">Minimap<span></span></div>
									<div class="mini_container">
										<div class="mini_screen">SCREEN</div>
										<div class="mini_seats"></div>
										<div class="mini_exits"></div>
									</div>
									<div class="mini_region"><span></span></div>
								</div>
								<div class="legend">
									<div class="buttons">
										<a class="btn-zoom" id="seat_zoom_btn" href="#">크게보기</a>
									</div>
									<div class="seat-icon-desc">
										<span class="icon selected"><span class="icon"></span>선택</span>
										<span class="icon reserved"><span class="icon"></span>예매완료</span>
										<span class="icon notavail"><span class="icon"></span>선택불가</span>
									</div>
									<div class="seat-type">
										<span class="radiobutton type-prime" title="최적의 영상과 사운드로 영화를 감상할 수 있는 CGV 추천좌석"><span class="icon"></span>Prime Zone</span>
										<span class="radiobutton type-normal"><span class="icon"></span>일반석</span>
										<span class="radiobutton type-couple" title="연인, 가족, 친구를 위한 둘만의 좌석"><span class="icon"></span>커플석</span>
										<span class="radiobutton type-handicap"><span class="icon"></span>장애인석</span>
										<span class="radiobutton type-sweetbox" title="국내 최대 넓이의 프리미엄 커플좌석"><span class="icon"></span>SWEETBOX</span>
										<span class="radiobutton type-veatbox" title="음향 진동 시스템이 적용된 특별좌석"><span class="icon"></span>VEATBOX</span>
										<span class="radiobutton type-4d" title="바람, 진동 등 오감으로 영화 관람, 4DX"><span class="icon"></span>4DX</span>
										<span class="radiobutton type-widebox" title="일반석보다 더 넓고 편안한 좌석"><span class="icon"></span>WIDEBOX</span>
										<span class="radiobutton type-cinekids last" title="365일 어린이 전용 상영관"><span class="icon"></span>CINEKIDS</span>
									</div>
								</div>
							</div>
						   <div class="mouse_block"></div>
						</div>
					</div>
					<a class="btn-refresh" href="#">
						<span>다시하기</span>
					</a>
					<!-- 시간표 변경 -->
					<div class="section_time_popup" id="section_time_popup">
						<div class="canvas">
							<div class="sprite">
								<div class="time-option">
									<span class="morning">조조</span><span class="night">심야</span>
								</div>
								<div class="time-list nano" id="time_popup_list">
									<div class="content scroll-y"></div>
								</div>
							</div>
							<div class="buttons">
								<a href="#" onclick="return false;" class="btn_ok"><span>확인</span></a>
								<a href="#" onclick="return false;" class="btn_cancel"><span>취소</span></a>
								<a href="#" onclick="return false;" class="sreader">시간표 변경 팝업 닫기</a>
							</div>
						</div>
						<div class="corner"></div>
					</div>
					<!-- 시간표 변경 -->
				</div>
				<!-- //step2 -->
				<!-- step3 -->
				<div class="step step3" >
				</div>
				<!-- //step3 -->
				<!-- step4 -->
				<div class="step step4">
				</div>
				<!-- //step4 -->
				<noscript>
					<div class="noscript"><span>현재 사용중인 환경에서는 스크립트 동작이 활성화되지 않아 예매 서비스를 이용하실 수 없습니다.<br/>예매 서비스를 이용하기 위해서는 <a href='http://www.enable-javascript.com/ko/' rel='nofollow'>스크립트 동작을 활성화</a> 해주세요.</span></div>
				</noscript>
			</div>
			<div class="tnb_area">
				<div class="tnb_container">
				<div class="tnb_reset_btn"><a href="#">예매 다시하기</a></div>
				<div class="tnb step1">
					<!-- btn-left -->
					<a class="btn-left" href="#" title="">이전단계로 이동</a>
					<div class="info movie">
						<span class="movie_poster"><img src="" alt="영화 포스터" /></span>
						<div class="row movie_title colspan2">
							<span class="data letter-spacing-min ellipsis-line2"><a href="#" target="_blank" title="새창열기">영화정보 상세보기</a></span>
						</div>
						<div class="row movie_type">
							<span class="data ellipsis-line1"></span>
						</div>
						<div class="row movie_rating">
							<span class="data"></span>
						</div>
						<div class="placeholder" title="영화선택"></div>
					</div>
					<div class="info theater">
						<div class="row name">
							<span class="header">극장</span>
							<span class="data letter-spacing-min ellipsis-line1"><a href="#" target="_blank" title="새창열기">극장정보 상세보기</a></span>
						</div>
						<div class="row date">
							<span class="header">일시</span>
							<span class="data"></span>
						</div>
						<div class="row screen">
							<span class="header">상영관</span>
							<span class="data"></span>
						</div>
						<div class="row number">
							<span class="header">인원</span>
							<span class="data"></span>
						</div>
						<div class="placeholder" title="극장선택"></div>
					</div>
					<div class="info seat">
						<div class="row seat_name">
							<span class="header">좌석명</span>
							<span class="data">일반석</span>
						</div>
						<div class="row seat_no colspan3">
							<span class="header">좌석번호</span>
							<span class="data ellipsis-line3"></span>
						</div>
						<div class="placeholder" title="좌석선택"></div>
					</div>
					<div class="info payment-ticket">
						<div class="row payment-adult">
							<span class="header">일반</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>
						<div class="row payment-youth">
							<span class="header">청소년</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>
						<div class="row payment-child">
							<span class="header">어린이</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>						
						<div class="row payment-special">
							<span class="header">우대</span>
							<span class="data"><span class="price"></span>원 x <span class="quantity"></span></span>
						</div>
						<div class="row payment-final">
							<span class="header">총금액</span>
							<span class="data"><span class="price">0</span><span class='won'>원</span></span>
						</div>
					</div>
					<div class="info path">
						<div class="row colspan4">
							<span class="path-step2" title="좌석선택">&nbsp;</span>
							<span class="path-step3" title="결제">&nbsp;</span>
						</div>
					</div>
					<!-- btn-right -->
					<div class="tnb_step_btn_right_before" id="tnb_step_btn_right_before"></div>
					<a class="btn-right" id="tnb_step_btn_right" href="./movieBookingForm.jsp?step=2" title="">다음단계로 이동 - 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</a>
				</div>
			</div>
			</div>
			<!-- 배너 -->
			<div class="banner" id="ticket_bottom_banner"><a  target="_blank" title="새창"><span style="sreader">배너광고 영역</span></a></div>
			<!-- //배너 -->
			<!-- 팝업 -->
			<div class="popups">                
				<!-- Popup - 로그인 --> 
<div class="ft_layer_popup popup_login" style="display:none;">
</div>
<!-- //Popup -->

<!-- Popup - 얼럿 --> 
<div class="ft_layer_popup popup_alert original" style="">
    <div class="hd">
        <div class="title_area">
            <h4 class="alert_title">얼럿타이틀</h4>
			<span class="sreader">빠른예매는 레이어로 서비스 되기 때문에 가상커서를 해지(Ctrl+Shift+F12)한 후 사용합니다.</span>
        </div>
        <a href="#" onclick="return false;" class="layer_close">닫기</a>
    </div><!-- //hd -->
    <div class="bd">
        <p class="alert_msg">얼럿메세지</p>
    </div><!-- //bd -->
    <div class="ft">
        <a title="확인" href="#" onclick="return false;" class="btn btn_ok"><span>확인</span></a>
        <a title="취소" href="#" onclick="return false;" class="btn btn_white btn_close"><span>취소</span></a>
    </div><!-- //ft -->     
</div>
<!-- //Popup -->

<!-- Popup - guide --> 
<div class="ft_layer_popup popup_guide" style="display:none;">
    <div class="guide_hd">
        <h4><span class="blind">CGV 예매가이드</span></h4>
        <p><span class="blind">새롭게 바뀐 CGV 예매 서비스를 직접 확인해보세요!</span></p>
    </div><!-- //hd -->
    <div class="guide_bd">
        <div class="tab_menu clfix">
            <ul>
                <li class="a first"><a href="#none"  class="on" title="STEP 1 영화, 극장, 날짜, 시간 선택"><span><var><span class="blind_txt tab1">STEP 1 영화, 극장, 날짜, 시간 선택</span></var></span></a></li>
                <li class="b"><a href="#none" title="STEP 2 인원, 좌석선택"><span><var><span class="blind_txt tab2">STEP 2 인원, 좌석선택</span></var></span></a></li>
                <li class="c"><a href="#none" title="STEP 3 결제하기"><span><var><span class="blind_txt tab3">STEP 3 결제하기</span></var></span></a></li>
            </ul>
        </div>
        <div class="content">
            <div class="guide_step01">
                <p class="notice"><span class="blind">원하시는 영화, 극장, 날짜, 시간 정보를 선택해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">전체 화면구성이 세로형으로 변경되어 더 빠르고 쉽게 정보 선택이 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-영화분류안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">무비꼴라쥬, 특별관 영화를 빠르고 편리하게 분류하여 확인할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn04">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-자주가는 CGV안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">자주 가는 극장 설정 기능을 통해 보다 빠른 극장 선택이 가능해졌어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn05">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-영문 빠른예매</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">영문 버전 빠른예매를 통해 다국적 사용자들도 쉽게 예매 서비스를 이용할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn06">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-조조/심야구분안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">조조/심야 영화 시간에 대해 쉽게 확인할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn07">
                            <a href="#" onclick="return false;" class="btnVisInfo blind_txt">물음표-새롭게 바뀐 CGV 예매서비스안내</a>
                            <p class="infoBx">
                            <span class="top"></span>
                            <span class="middle">선택한 예매 정보 및 나의 예매 진행 단계를 한 눈에 파악할 수 있어요!</span>
                            <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step01-->
            <div class="guide_step02">
                <p class="notice"><span class="blind">예매 인원수에 맞게 원하시는 자리 를 선택해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-상영관/시간 확인 및 변경안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">선택한 상영관/시간 확인 및 변경 기능이 보다 쉽고 눈에 띄게 변경되었어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" onclick="return false;" title="" class="btnVisInfo blind_txt">물음표-다양한 좌석도 보기안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">좌석도 크게 보기 기능으로 시력이 좋지 않으신 분들도 쉽게 예매가 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step02-->
            <div class="guide_step03">
                <p class="notice"><span class="blind">원하시는 할인 및 결제수단을 이용하여 예매를 완료해주세요!</span></p>
                <div class="guide_btn">
                    <p><span class="question blind_txt">물음표</span><span class="info">를 오버시 해당 설명을 볼 수 있습니다.</span></p>
                    <ul>
                        <li class="btn01">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-할인 및 결제수단안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">전체 화면구성이 할인수단과 결제수단 영역으로 나뉘어 한 눈에 보기 편리해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn02">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-CGV영화관람권,할인쿠폰, CJ ONE포인트 안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">주요 할인수단인 CGV영화관람권, CGV할인쿠폰, CJ ONE 포인트의 바로 조회 기능을 통해 보다 빠른 예매가 가능해졌어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn03">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-할인수단별 선택안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">다양한 CGV의 할인수단을 보기 쉽게 그룹화하여 원하는 할인수단만 선택해 이용하실 수 있어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn04">
                            <a href="#"  title="" class="btnVisInfo blind_txt">물음표-결제정보안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">내가 적용한 할인 및 결제수단 내역을 한 눈에 쉽게 확인 가능해요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                        <li class="btn05">
                            <a href="#" title="" class="btnVisInfo blind_txt">물음표-최신할인정보안내</a>
                            <p class="infoBx">
                                <span class="top"></span>
                                <span class="middle">다양한 CGV결제수단의 최신 할인 정보를 쉽게 모아 볼 수 있어요!</span>
                                <span class="bottom"></span>
                            </p>
                        </li>
                    </ul>
                </div>
            </div><!--//guide_step03-->
        </div>
    </div><!-- //bd -->  
    <div class="ft">
        <a title="닫기" href="#" class="btn btn_white btn_close"><span>닫기</span></a>
        <a title="닫기" href="#" class="layer_close">닫기</a>
    </div><!-- //ft -->  
</div>
<!-- //Popup -->

			</div>
			<!-- //팝업 -->
		</div>
		<!-- //빠른예매 -->
	</div>
	<!-- //컨텐츠 -->
	<!-- banner -->
	<div id="ticket_banner" class="ticket_banner">
		<div><div>
			<a class="left_link" target="_blank" title="새창"><span class="sreader">배너광고 영역</span></a>
			<a class="right_link" target="_blank" title="새창"><span class="sreader">배너광고 영역</span></a>
		</div></div>
	</div>
	<!-- banner -->
</div>
<div class="blackscreen" style="display:none;" id="blackscreen"></div>
<!-- loading -->
<!-- <div class="loading" id="ticket_loading">
	<div class="dimm"></div>
	<p class="loadWrap"><img src="http://img.cgv.co.kr/CGV_RIA/Ticket/image/reservation/common/ajax-loader-w.gif" alt="로딩 애니메이션" /></p>
</div> -->
<!-- iframe -->
<!-- javascript 상위프레임에 있는 스크립트를 사용-->
<!--<script type="text/javascript" src="http://img.cgv.co.kr/common/js/insightIS.js"></script>-->
</body>
</html>