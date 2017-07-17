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
				<h3>POINT</h3>
				<ul>
					<li><strong>사용가능 포인트</strong> <span><em>${S_POINT}</em> 점</span></li>
					<li><strong>VIP선정 포인트</strong><a href="#">
					<img alt="i" /></a>
					<span><em>700</em> 점</span></li>
				</ul>
			</div>
			<div>
				<h3>자주가는 극장</h3>
				<div>
					<ul>
						<li><a href="#"><span>1<em>순위</em></span>전주</a></li>
						<li><a href="#"><span>2<em>순위</em></span></a></li>
						<li><a href="#"><span>3<em>순위</em></span></a></li>
						<li><a href="#"><span>4<em>순위</em></span></a></li>
						<li><a href="#"><span>5<em>순위</em></span></a></li>
					</ul>
					<button title="새창" type="button">
						자주가는 극장<br />설정하기
					</button>
				</div>
			</div>
		</div>
	</div>
</div>
