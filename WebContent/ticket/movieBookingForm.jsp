<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<title>빠른예매 | 영화 그 이상의 감동. CGV</title>
</head>

<body class="">
    <form name="ssologinfrm" action="https://www.cgv.co.kr/user/login/login-sso.aspx" method="post">
        <input type="hidden" id="cjssoq" name="cjssoq" />
        <input type="hidden" name="returnURL" value="/ticket/" />
    </form>
<div class="skipnaiv">
	<a href="#contents" >메인 컨텐츠 바로가기</a>
</div>
<div id="cgvwrap">

	<!-- Header -->
<%@ include file="/module/top.jsp"%>
	<!-- /Header -->

    	<!-- Contaniner -->
	<div id="contaniner">

        <!-- LineMap -->
        <div id="navigation_line" class="linemap-wrap">
            <div class="sect-linemap">
                <div class="sect-bcrumb">
                    <ul>
                        <li><a href="/"><img alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png" /></a></li>
                        <li><a href="/ticket/">예매</a></li>
                        <li class="last">빠른예매</li>
                    </ul>
                </div>
                <div class="sect-special">
                    <ul> 
                        <li><a href="/user/vip-lounge/">VIP LOUNGE</a></li>
                        <li><a href="/user/memberShip/ClubService.aspx" class="specialclub" title="새창">CLUB 서비스</a></li>
                        <li><a href="#" class="photi" title="새창">포토티켓</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //LineMap -->

		<!-- Contents Area -->
		<div id="contents" style="height:1px;padding:0;"></div>
        <iframe title="CGV 빠른예매" id="ticket_iframe" src="<%= request.getContextPath() %>/ticket/reservationForm.jsp" 
        scrolling="no" frameborder="0" width="100%" height="987" style="width:100%; border:0 none;"></iframe>
		<!-- /Contents Area -->
	</div>
	<!-- /Contaniner -->


	<!-- Footer -->
		<%@ include file="/module/bottom.jsp"%>
	<!-- /Footer -->

    <!-- Aside Banner :  -->
	
	<!-- //Aside Banner -->
</div>

</body>
</html>