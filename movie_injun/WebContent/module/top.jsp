<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div id="header">
	<div class="head">
		<h1>
			<a href="<%= request.getContextPath() %>/main.jsp"><img
				src="<%= request.getContextPath() %>/images/title/logo_cgv.png"
				alt="CGV"></a>
		</h1>
		<div class="sect-service">
			<h2>서비스 메뉴</h2>
			<ul class="util">
			</ul>
			<ul class="gnb">
				<%
	String S_ID = (String)session.getAttribute("S_ID");
	if(S_ID == null){
%>
				<li><a
					href="<%= request.getContextPath() %>/login/loginForm.jsp"
					class="login"><span>로그인</span></a></li>
				<li><a href="#" class="join"><span>회원가입</span></a></li>
				<%		
	}else{
%>
				<li><a
					href="<%= request.getContextPath() %>/login/logoutPro.jsp"
					class="logout"><span>로그아웃</span></a></li>
				<%
	}
%>
				<li><a href="<%=request.getContextPath() %>/mycgv/mycgv.jsp"
					class="mycgv required-login"><span>MY CGV</span></a></li>
				<li><a href="#" class="vip"><span>VIP LOUNGE</span></a></li>
				<li><a href="#" title="새창" class="club specialclub"><span>CLUB
							서비스</span></a></li>
				<!-- 2014.12.8 리뉴얼-->
				<li><a href="#" class="customer"><span>고객센터</span></a></li>
				<!-- 2014.12.8 리뉴얼-->
				<li><a href="#" class="showtimes"><span>ENGLISH
							TICKETING</span></a></li>
			</ul>
		</div>
		<div class="im-wrap">
			<h2>
				<img
					src="<%= request.getContextPath() %>/images/title/h2_cultureplex.png"
					alt="CULTUREPLEX">
			</h2>
			<div class="lnb">
				<h2>CGV 주메뉴</h2>
				<ul id="gnb_list">
					<li class="movie"><a href="#">영화</a>
						<div class="sub-wrap">
							<i></i>
							<div>
								<ul>
									<li><a href="#">무비차트</a></li>
									<li><a href="#">트레일러</a></li>
									<li><a href="#">무비파인더</a></li>
									<li><a href="#">평점</a></li>
									<li class="last">
									<li><a href="#">CGV아트하우스</a></li>
								</ul>
							</div>
						</div></li>
					<li class="booking"><a href="#">예매</a></li>
					<li class="theaters"><a href="#">극장</a></li>
					<li class="culture"><a href="#">이벤트&amp;컬쳐</a></li>
				</ul>
			</div>
			<div class="sect-srh">
				<h2>통합검색서비스</h2>
				<fieldset>
					<legend>통합검색</legend>
					<input type="text" title="통합검색" id="header_keyword"
						name="header_keyword" maxlength="20" /> <input type="hidden"
						id="header_ad_keyword" name="header_ad_keyword" />
					<button type="button" class="btn-go-search" id="btn_header_search">검색</button>
					<iframe
						src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/main@Search_txt"
						width="0" height="0" title="" frameborder="0" scrolling="no"
						marginwidth="0" marginheight="0"></iframe>
				</fieldset>
			</div>
		</div>
	</div>
</div>
