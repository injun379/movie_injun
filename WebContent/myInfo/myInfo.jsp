<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
		<script>
			alert("로그인이 필요한 서비스입니다.");
			location.href = "<%= request.getContextPath() %>/login.movie";
		</script>
	</c:when>
	<c:otherwise>
<body>
	<div>
		<%@ include file="/module/top.jsp"%>
			<!-- LineMap -->
		<div>
				<ul>
					<li>
						<a href="${pageContext.request.contextPath}/index.movie"></a>
					</li>
					<li><a href="#">myinfo</a></li>
					<li>HOME</li>
				</ul>
			<div>
				<ul>
					<li><a href="#">VIP LOUNGE</a></li>
					<li><a href="#">Club서비스</a></li>
					<li><a href="#">포토티켓</a></li>
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
							<a href="#"></a>
						</div>
						<div>
							<a href="#"></a>
						</div>
						<div>
							<a href="#"></a>
						</div>
						<div>
							<a href="#"></a>
						</div>
					</div>
				</div>
				<div>
					<h3>MY 예매내역</h3>
					<p>
						<em>0건</em> <a href="#">예매내역 더보기</a>
					</p>
					<span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
				</div>
				<!-- //MY 예매내역 -->
				<!-- MY 구매정보 -->
				<div>
					<div>
						<div>
							<div>
								<h3>MY 구매정보</h3>
								<span>현재 사용하실 수 있는 쿠폰정보입니다. 상품명을 클릭하시면 내역조회페이지로 이동합니다.</span>
							</div>
							<ul>
								<li><a href="#"><strong>매점상품 기프트콘</strong></a> <span><em>0</em> 개</span></li>
								<li><a href="#"><strong>영화관람권 기프트콘</strong></a> <span><em>0</em> 개</span></li>
								<li><a href="#"><strong>FUN-CON 기프트콘</strong></a> <span><em></em>준비중</span></li>
								<li><a href="#"><strong>무비꼴라쥬 패스카드</strong></a> <span><em>0</em> 개</span></li>
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

