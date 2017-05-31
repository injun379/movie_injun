<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="col-aside">
	<div class="skipnaiv">
		<a href="#mycgv_contents" id="skipMycgvMenu">MYCGV 서브메뉴 건너띄기</a>
	</div>
	<h2>MY CGV 서브메뉴</h2>
	<div class="snb">
		<ul>
			<li class="on"><a href="/user/mycgv/?g=1" title="현재 선택">MY
					CGV HOME <i></i>
			</a></li>
			<li><a href="/user/mycgv/reserve/?g=1">나의 예매내역 <i></i></a>
				<ul>
					<li><a href="/user/mycgv/reserve/receipt.aspx?g=1">신용카드
							영수증 출력</a></li>
				</ul></li>
			<li><a href="/user/mycgv/coupon/movie-ticket/list.aspx?g=1">관람권/할인쿠폰
					관리 <i></i>
			</a>
				<ul>
					<li><a href="/user/mycgv/coupon/movie-ticket/list.aspx?g=1">CGV
							영화관람권</a></li>
					<li><a href="/user/mycgv/coupon/discount/list.aspx?g=1">CGV할인쿠폰</a>
					</li>
					<li><a href="/user/mycgv/coupon/movie-passcard/?g=1">CGV무비패스카드</a>
					</li>
					<li><a href="/user/mycgv/coupon/phototicket-passcard/?g=1">CGV포토티켓
							패스카드</a></li>
					<li><a href="/user/mycgv/coupon/cjone/list.aspx?g=1">CJ
							ONE 쿠폰</a></li>
					<li><a href="/user/mycgv/coupon/giftcon/list.aspx?g=1">CGV
							기프트콘(영화관람권)</a></li>
					<li><a
						href="/user/mycgv/coupon/partner-discount/list.aspx?g=1">카드사
							할인쿠폰</a></li>
				</ul></li>
			<li><a href="/user/mycgv/cjone-point/cafeteria.aspx?g=1">CJ
					ONE 포인트 <i></i>
			</a>
				<ul>
					<li><a href="/user/mycgv/cjone-point/cafeteria.aspx?g=1">매점이용
							포인트 적립</a></li>
					<li><a href="/user/mycgv/cjone-point/pointlist.aspx?g=1">포인트
							적립/사용내역</a></li>
				</ul></li>
			<li><a href="javascript:fncMoveToPhototicket()">내가꾸민포토티켓 <i></i></a>
			</li>
			<li><a href="/user/mycgv/culture-shop/?g=1">티켓·팝콘스토어<i></i></a>
				<ul>
					<li><a href="/user/mycgv/culture-shop/?type=1&g=1">매점상품
							기프트콘</a></li>
					<li><a href="/user/mycgv/culture-shop/?type=0&g=1">영화관람권
							기프트콘</a></li>
					<li><a href="/user/mycgv/culture-shop/fun-con.aspx?g=1">FUN-CON</a>
					</li>
				</ul></li>
			<li><a href="/user/mycgv/myinfo/?g=1">회원정보<i></i></a>
				<ul>
					<li><a
						href="<%= request.getContextPath() %>/mycgv/confirm_password.jsp">개인정보
							변경</a></li>
					<li><a href="/user/mycgv/myinfo/?g=1">CGV 서비스 이용동의 설정</a></li>
					<li><a
						href="/user/mycgv/myinfo/edit-myinfo-Email-Sms.aspx?g=1">Email/SMS
							수신설정</a></li>
					<li><a href="/user/mycgv/myinfo/leave-cjone.aspx?g=1">회원탈퇴</a>
					</li>
				</ul></li>
			<li><a href="/user/mycgv/myinfo/edit-myinfo-myprofile.aspx?g=1">프로필
					관리<i></i>
			</a></li>
			<li><a href="/user/mycgv/inquiry/qna/list.aspx?g=1">나의 문의내역
					<i></i>
			</a>
				<ul>
					<li><a href="/user/mycgv/inquiry/qna/list.aspx?g=1">1:1
							문의</a></li>
					<li><a href="/user/mycgv/inquiry/lost/list.aspx?g=1">분실물
							문의</a></li>
				</ul></li>
			<li class="my-event"><a href="/user/movielog/watched.aspx">내가
					본 영화</a></li>
			<li class="my-event"><a href="/user/mycgv/event/?g=1">나의 참여
					이벤트</a></li>
		</ul>
		<div class="ad-partner01">
			<iframe
				src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@M_Rectangle"
				width="160" height="300" title="" frameborder="0" scrolling="no"
				marginwidth="0" marginheight="0" id="M_Rectangle"></iframe>
		</div>
		<div class="ad-partner02">
			<iframe
				src="http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Image_text"
				width="160" height="35" title="" frameborder="0" scrolling="no"
				marginwidth="0" marginheight="0" id="Image_text"></iframe>
		</div>
	</div>
</div>
