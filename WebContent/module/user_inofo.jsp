<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import = "ksmart.dao.MemberDao" %>
<%@ page import = "ksmart.dto.Member" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div>
	<div>
		<div>
			<a href="#menu" id="skipPersoninfo">개인화영역 건너띄기</a>
		</div>
		<div>
			<h2>개인화 영역</h2>
			<div>
				<div>
					<strong>${S_NAME}님</strong> <em>${S_ID}</em> <span>닉네임
						: <i>닉네임을 설정해주세요.</i>
					</span>
					<button type="button" title="새창열림">나의 정보 변경</button>
				</div>
				<div>
					<p style="margin-bottom: 4px; color: #342929; font-family: 'NanumBarunGothicBold', '맑은 고딕', '돋움', Dotum, sans-serif; font-size: 20px; line-height: 20px;">
						고객님은 <strong>${S_LEVEL}</strong> 입니다.
					</p>
					<div>
						<h5>SPECIAL MEMBERSHIP</h5>
					</div>
				</div>
			</div>
		</div>
		<div>
			<div>
				<h3>MY COUPON</h3>
				<ul>
					<li><strong>CGV VIP에 도전하세요!</strong> <span><a href="#"><i>CGV VIP 혜택보기</i></a></span></li>
					<li><strong>CGV 할인쿠폰</strong> <span><em>0</em> 개</span></li>
					<li><strong>영화관람권</strong> <span><em>0</em> 개</span></li>
				</ul>
			</div>
			<div>
				<h3>CJ ONE POINT</h3>
				<a href="#">CJ ONE POINT 더보기</a>
				<ul>
					<li><strong>CJ ONE 사용가능 포인트</strong> <span><em>${S_POINT}</em> 점</span></li>
					<li><strong>VIP선정 포인트</strong><a href="#" class="mycgv_tooltip">
					<img src="http://img.cgv.co.kr/R2014/images/common/mycgv_tooltip/ico_tooltip.png" alt="i" /></a>
						<div>
							<span><img
								src="http://img.cgv.co.kr/R2014/images/common/mycgv_tooltip/tooltip_con2.png"
								alt="CGV에서 구매를 통해 적립된 매표 구매 포인트/매점&amp;씨네샵 구매 포인트/VIP 선정에 포함되는 이벤트 포인트가 누적으로 합산된 포인트 입니다" /></span>
						</div> <span><em>700</em> 점</span></li>
				</ul>
			</div>
			<div>
				<h3>자주가는 CGV</h3>
				<div>
					<ul>
						<li><a href="#"><span>1<em>순위</em></span>CGV전주효자</a></li>
						<li><a href="#"><span>2<em>순위</em></span></a></li>
						<li><a href="#"><span>3<em>순위</em></span></a></li>
						<li><a href="#"><span>4<em>순위</em></span></a></li>
						<li><a href="#"><span>5<em>순위</em></span></a></li>
					</ul>
					<button title="새창" type="button">
						자주가는 CGV<br />설정하기
					</button>
				</div>
			</div>
			<div class="cols-point-wrap"></div>
		</div>
	</div>
</div>
