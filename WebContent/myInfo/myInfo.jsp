<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/open-clapperboard-.png.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>MYCGV홈</title>
</head>
<c:choose>
	<c:when test="${S_ID == null}">
		<script language="javascript">
			alert("로그인이 필요한 서비스입니다.");
			location.href = "<%= request.getContextPath() %>/login.movie";
		</script>
	</c:when>
	<c:otherwise>
<body>
	<div>
		<%@ include file="/module/top.jsp"%>
			<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

			<!-- LineMap -->
		<div>
			<div>
				<ul>
					<li>
						<a href="${pageContext.request.contextPath}/index.movie">
							<img alt="home" src="${pageContext.request.contextPath}/images/common/btn/btn_home.png"/>
						</a>
					</li>
					<li><a href="#">mycgv</a></li>
					<li class="last">MYCGV HOME</li>
				</ul>
			</div>
			<div>
				<ul>
					<li><a href="#">VIP LOUNGE</a></li>
					<li><a href="#" title="새창" class="specialclub">Club서비스</a></li>
					<li><a href="#" title="새창" class="photi" target="_blank">포토티켓</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div>
		<%@ include file="/module/user_inofo.jsp"%>
		<div>
			<%@ include file="/module/left.jsp"%>
			<div>
				<div>
					<div>
						<div>
							<a href="#" title="위시리스트">
								<h3>위시리스트</h3> <span>보고 싶은 영화들을 미리 <br />담아두고 싶다면?
							</span>
							</a>
						</div>
						<div>
							<a href="#" title="내가 본 영화">
								<h3>내가 본 영화</h3> <span>관람한 영화들을 한번에 <br />모아 보고 싶다면?
							</span>
							</a>
						</div>
						<div>
							<a href="#" title="무비다이어리">
								<h3>무비다이어리</h3> <span>관람 후 내 감상평을 적어 <br />추억하고 싶다면?
							</span>
							</a>
						</div>
						<div>
							<a href="#">
								<h3>포토티켓</h3> <span>단 하나뿐인 나만의<br />티켓을 간직하고 싶다면?
							</span>
							</a>
						</div>
					</div>
				</div>
				<div>
					<h3>MY 예매내역</h3>
					<p>
						<em>0건</em> <a href="/user/mycgv/reserve/">예매내역 더보기</a>
					</p>
					<span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
				</div>

				
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
				<div>
					<div>
						<div>
							<div>
								<h3>MY 구매정보</h3>
								<span>현재 사용하실 수 있는 쿠폰정보입니다. 상품명을 클릭하시면 내역조회페이지로 이동합니다.</span>
							</div>
							<ul>
								<li class="booth"><a href="#"><strong>매점상품 기프트콘</strong></a> <span><em>0</em> 개</span></li>
								<li class="viewing"><a href="#"><strong>영화관람권 기프트콘</strong></a> <span><em>0</em> 개</span></li>
								<li class="funcon"><a href="#"><strong>FUN-CON 기프트콘</strong></a> <span><em></em>준비중</span></li>
								<li class="collage"><a href="#"><strong>무비꼴라쥬 패스카드</strong></a> <span><em>0</em> 개</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<%@ include file="/module/bottom.jsp"%>
</body>
	</c:otherwise>	
</c:choose>
</html>

