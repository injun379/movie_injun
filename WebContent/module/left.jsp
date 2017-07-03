<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div>
	<h2>MY CGV 서브메뉴</h2>
	<div>
		<ul>
			<li><a href="#" title="현재 선택">MY
					CGV HOME <i></i>
			</a></li>
			<li>
				<a href="#">나의 예매내역 <i></i></a>
				<ul>
					<li><a href="#">신용카드 영수증 출력</a></li>
				</ul>
			</li>
			<li>
				<a href="#">
					관람권/할인쿠폰 관리 <i></i>
				</a>
				<ul>
					<li><a href="#">CGV 영화관람권</a></li>
					<li><a href="#">CGV할인쿠폰</a></li>
					<li><a href="#">CJ ONE 쿠폰</a></li>
				</ul></li>
			<li>
				<a href="#">CJ ONE 포인트 <i></i></a>
				<ul>
					<li><a href="#">매점이용 포인트 적립</a></li>
					<li><a href="#">포인트 적립/사용내역</a></li>
				</ul>
			</li>
			<li><a href="#">회원정보<i></i></a>
				<ul>
					<li><a href="${pageContext.request.contextPath}/mycgv/member_confirm.movie">개인정보 변경</a></li>
					<li><a href="#">회원탈퇴</a> </li>
				</ul>
			</li>
			<li>
				<a href="#">
					프로필 관리<i></i>
				</a>
			</li>
			<li>
				<a href="#">
					나의 문의내역<i></i>
				</a>
				<ul>
					<li><a href="#">1:1 문의</a></li>
					<li><a href="#">분실물 문의</a></li>
				</ul></li>
			<li><a href="#">내가 본 영화</a></li>
		</ul>
	</div>
</div>
