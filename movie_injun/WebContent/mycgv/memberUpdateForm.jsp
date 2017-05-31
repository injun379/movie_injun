<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/reset.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/layout.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/module.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/common.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/content.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/eggupdate.css" />
<link rel="stylesheet" media="print" type="text/css" href="<%= request.getContextPath() %>/css/print.css" />
<link rel="stylesheet" media="all" type="text/css" href="<%= request.getContextPath() %>/css/content_1207.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>MYCGV:회원정보수정</title>
<script>
	$(document).ready(function(){
		$('#birthday-pick').blur(function(){
			$('#m_birth').val($('#birthday-pick').value)
			});
		});
</script>
</head>
<body class="">
<div id="cgvwrap">
<%@ include file="/module/top.jsp" %>
	<div id="contaniner" class="bg-bricks" style="background-color:#fdfcf0;"><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

        <!-- LineMap -->

        <div id="ctl00_navigation_line" class="linemap-wrap">
            <div class="sect-linemap">
                <div class="sect-bcrumb">
                    <ul>
                        <li><a href="#"><img alt="home" src="../images/common/btn/btn_home.png" /></a></li>
                        <li><a href="#">mycgv</a></li>
                        <li  class="last"> MYCGV HOME</li>
                    </ul>
                </div>
                <div class="sect-special">
                    <ul>
                        <li><a href="#">VIP LOUNGE</a></li>
                        <li><a href="#" title="새창" class="specialclub">Club서비스</a></li>
                        <li><a href="#" title="새창" class="photi" target="_blank">포토티켓</a></li>
                    </ul>
                </div>
           	</div>
        </div>
        <div id="contents" class="">
<%@ include file="/module/user_inofo.jsp" %>
<%
String str = m.getM_email();
int p = str.lastIndexOf("@");
String emailId = str.substring(0, p);
System.out.println(emailId + " <-- emailId");
String emailAddr = str.substring(p+1);
%>
			<div class="cols-content" id="menu">
<%@ include file="/module/left.jsp" %>
 				<div class="col-detail" id="mycgv_contents">
					<div class="c_tab_recont on">
						<div class="tit-mycgv">
						<h3>개인정보 변경</h3>
						</div>
						<div class="sect-register cjone">
							<p>※ 개명으로 인한 이름변경, 생년월일, Email주소, 휴대폰번호 등 일부 개인정보를 변경 할 수 있습니다.</p>
							<br /><br />
						    <div class="tbl-form">
								<form action="./memberUpdatePro.jsp" method="post">
										<table summary="나의 CGV정보 선호장르,주중선호요일,선호시간대,자주가는 CGV, Special Day 표기">
											<caption>나의 CGV정보</caption>
											<colgroup>
											<col width="19%" />
											<col width="*" />
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">이름</th>
													<td><%= m.getM_name() %></td>
													<td>
														<input id="m_name" name="m_name" type="text" value="<%= m.getM_name() %>">
													</td> 
												</tr>
												<tr>
													<th scope="row">휴대전화번호</th>
													<td><%= m.getM_phone() %></td>
													<td>
														<input id="m_phone" name="m_phone" type="text" value="<%= m.getM_phone() %>">
													</td> 
												</tr>
												<tr>
													<th scope="row">Email주소</th>
													<td><%= m.getM_email() %></td>
													<td>
														<input id="m_email" name="email_id" type="text" value="<%= emailId %>">
													 	@
									                    <select id="url" name="email_addr">
									                    <% if(emailAddr.equals("naver.com")) { %>
									                        <option value="naver.com" selected="selected">네이버</option>
									                        <option value="daum.net">다음</option>
									                        <option value="nate.com">네이트</option>
									                        <option value="gamil.com">구글</option>
									                    <%} else if(emailAddr.equals("daum.net")) { %> 
									                    	<option value="naver.com">네이버</option>
									                        <option value="daum.net"  selected="selected">다음</option>
									                        <option value="nate.com">네이트</option>
									                        <option value="gamil.com">구글</option>   
									                    <%} else if(emailAddr.equals("nate.com")) { %> 
									                    	<option value="naver.com">네이버</option>
									                        <option value="daum.net">다음</option>
									                        <option value="nate.com"  selected="selected">네이트</option>
									                        <option value="gamil.com">구글</option>   
									                    <%} else { %> 
									                    	<option value="naver.com">네이버</option>
									                        <option value="daum.net">다음</option>
									                        <option value="nate.com">네이트</option>
									                        <option value="gamil.com" selected="selected">구글</option>   
									                    <%} %>
									                    </select>
													</td>
												</tr>
												<tr>
													<th scope="row">생년월일</th>
													<td><%= m.getM_birth() %></td>
													<td>
														<input id="m_birth" name="m_birth" type="date" value="<%= m.getM_birth() %>">
													</td> 
												</tr>
											</tbody>
										</table>
										<input type="hidden" name="m_id" value="<%= m.getM_id() %>">
										<button type="submit" class="set-btn round inred on"><span>회원정보 수정</span></button>
								</form>
							</div>
						
							<!-- 150716 : end -->
					</div><!-- // 회원정보 수정 컨텐츠 -->
				</div>
			</div>
		</div>
	</div>	
</div>
</div>
<%@ include file="/module/bottom.jsp" %>
</body>
</html>