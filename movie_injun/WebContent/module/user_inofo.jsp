<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import = "ksmart.dao.MemberDao" %>
<%@ page import = "ksmart.dto.Member" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String SID_i = (String)session.getAttribute("S_ID");
MemberDao memberDao = new MemberDao();
Member m = new Member();
m = memberDao.searchOneMember(SID_i);

String m_name = m.getM_name();
String m_level = m.getM_level();
int m_point = m.getM_point();

%>
<div class="sect-common">
	<div class="mycgv-info-wrap">
		<div class="skipnaiv">
			<a href="#menu" id="skipPersoninfo">개인화영역 건너띄기</a>
		</div>
		<div class="sect-person-info">
			<h2 class="hidden">개인화 영역</h2>
			<div class="box-image">
				<span class="thumb-image"> <img src="" /> <span
					class="profile-mask"></span>
				</span>
			</div>
			<div class="box-contents newtype">
				<div class="person-info">
					<strong><%= m_name %>님</strong> <em><%= SID_i %></em> <span>닉네임
						: <i>닉네임을 설정해주세요.</i>
					</span>
					<button id="go_edit_page" type="button" title="새창열림">나의 정보
						변경</button>
				</div>
				<div class="grade-info">
					<p
						style="margin-bottom: 4px; color: #342929; font-family: 'NanumBarunGothicBold', '맑은 고딕', '돋움', Dotum, sans-serif; font-size: 20px; line-height: 20px;">
						고객님은 <strong class="txt-purple"><%= m_level %></strong> 입니다.
					</p>
					<button type="button" id="view_usergrade" class="round black">
						<span>MY 지난등급이력 보기</span>
					</button>
					<div class="mycgv_btn_special2">
						<h5 class="special_tit">SPECIAL MEMBERSHIP</h5>
					</div>
				</div>
			</div>
		</div>
		<div class="cols-benefit-info">
			<div class="col-my-coupon">
				<h3>MY COUPON</h3>
				<ul>
					<li><strong>CGV VIP에 도전하세요!</strong> <span><a href="#"
							class="round black1"><i>CGV VIP 혜택보기</i></a></span></li>
					<li><strong>CGV 할인쿠폰</strong> <span><em>0</em> 개</span></li>
					<li><strong>영화관람권</strong> <span><em>0</em> 개</span></li>
				</ul>
			</div>
			<div class="col-one-point">
				<h3>CJ ONE POINT</h3>
				<a href="#">CJ ONE POINT 더보기</a>
				<ul>
					<li><strong>CJ ONE 사용가능 포인트</strong> <span><em
							class="txt-maroon"><%= m_point %></em> 점</span></li>
					<li class="tooltip_list cf"><strong>VIP선정 포인트</strong><a
						href="#" class="mycgv_tooltip"><img
							src="http://img.cgv.co.kr/R2014/images/common/mycgv_tooltip/ico_tooltip.png"
							alt="i" /></a>

						<div class="tooltip_con tc2">
							<span><img
								src="http://img.cgv.co.kr/R2014/images/common/mycgv_tooltip/tooltip_con2.png"
								alt="CGV에서 구매를 통해 적립된 매표 구매 포인트/매점&amp;씨네샵 구매 포인트/VIP 선정에 포함되는 이벤트 포인트가 누적으로 합산된 포인트 입니다" /></span>
						</div> <span><em>700</em> 점</span></li>
				</ul>
			</div>
			<div class="col-favorite-theater">
				<h3 class="hidden">자주가는 CGV</h3>
				<div class="sect-favorite">
					<ul id="favoriteTheaters">
						<li><a href="#" data-regioncode="04" data-theatercode="0179"><span>1<em>순위</em></span>CGV전주효자</a></li>
						<li><a href="#" data-regioncode="" data-theatercode=""><span>2<em>순위</em></span></a></li>
						<li><a href="#" data-regioncode="" data-theatercode=""><span>3<em>순위</em></span></a></li>
						<li><a href="#" data-regioncode="" data-theatercode=""><span>4<em>순위</em></span></a></li>
						<li><a href="#" data-regioncode="" data-theatercode=""><span>5<em>순위</em></span></a></li>
					</ul>
					<button id="btn_set_my_favorite" title="새창" type="button"
						class="setting">
						자주가는 CGV<br />설정하기
					</button>
				</div>
			</div>
			<div class="cols-point-wrap"></div>
		</div>
	</div>
</div>
