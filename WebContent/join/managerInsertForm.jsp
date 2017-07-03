<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>CGV 회원가입</title>
<script>
	function checkValue()
	{
		var form = document.memberInfo;
	
		if(!form.m_id.value){
			alert("아이디를 입력하세요.");
			if(($('#m_id').val().length < 4) ) {
                $('#idHelper').text('4자 이상의 영문 또는 숫자 조합으로  입력하세요.');
            } else {
            	$('#idHelper').text('');
            }
			return false;
		}
		
		if(form.check_id.value != "OK"){
			alert("아이디를 확인해주세요.");
			return false;
		}
		
		if(!form.m_pw.value){
			alert("비밀번호를 입력하세요.");
			if($('#m_pw').val().length < 4) {
                $('#pwHelper').text('4자 이상의 영문 또는 숫자 조합으로  입력하세요.');
            	console.log($('#check_id').val());
            } else {
            	$('#pwHelper').text('');
            }
			return false;
		}
		
		if(form.m_pw2.value != form.m_pw.value){
			alert("입력한 비밀번호가 일치하지 않습니다.");
			return false;
		}
		
		if(!form.m_name.value){
			alert("이름을 입력하세요.");
			return false;
		}
		
		if(!form.m_phone.value){
			alert("전화번호를 입력하세요.");
			return false;
		}
	
		if(!form.m_email.value){
			alert("메일 주소를 입력하세요.");
			return false;
		}
		if(!form.m_gender.value){
			alert("성별을 선택하세요.");
			return false;
		}
	}
	function showPopup(){
		window.open("idCheckPro.jsp?m_id="+$('#m_id').val(), "아이디 중복 확인", "width=430, height=365, left=200, top=50");
	}
	function showidCheckPro() {
		location.href="idCheckPro.jsp?m_id="+$('#m_id').val();
	}
	$(document).ready(function(){
	
		$('#m_id').keyup(function(){
		//	this.value = this.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣 | ~!@\#$%<>^&*\()\-=+_\’.,]/g, '');
			var id = this.value;
			
			if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z")){ 
				$('#idHelper').text('4자 이상의 영문 또는 숫자 조합으로  입력하세요.');
				return false;
			}
		});
		$('#m_name').keyup(function(){
			this.value = this.value.replace(/[0-9 | ~!@\#$%<>^&*\()\-=+_\’.,]/g, '');
		});
		$('#m_phone').keyup(function(){
			this.value = this.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣 | a-z | A-Z | ~!@\#$%<>^&*\()\=+_\.,’]/g, '');
		});
		$('#m_id').blur(function(){
			this.value = this.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣 | ~!@\#$%<>^&*\()\=+_\.,’]/g, '');
				if(($(this).val().length < 4) ) {
	                $('#idHelper').text('4자 이상의 영문 또는 숫자 조합으로  입력하세요.');
	            } else {
	            	$('#idHelper').text('');
	            }
			});
		$('#id_check').click(function(){
			if(($('#m_id').val().length < 4) ) {
                $('#idHelper').text('4자 이상의 영문 또는 숫자 조합으로  입력하세요.');
                return false;
            }
		});
		$('#m_pw').blur(function(){
			if($(this).val().length < 4) {
                $('#pwHelper').text('4자 이상의 영문 또는 숫자 조합으로  입력하세요.');
            	console.log($('#check_id').val());
            } else {
            	$('#pwHelper').text('');
            }
			});
		$('#m_pw2').blur(function(){
			if($(this).val() != $('#m_pw').val()) {
                $('#pw2Helper').text('입력한 비밀번호가 일치하지 않습니다.');
            	console.log($('#check_id').val());
            } else {
            	$('#pw2Helper').text('');
            }
			});
		$('#m_name').blur(function(){
			if($(this).val().length < 2) {
                $('#nameHelper').text('이름을  입력하세요.');
            } else {
            	$('#nameHelper').text('');
            }
		});
		$('#m_phone').blur(function(){
			this.value = this.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '');
			if($(this).val().length < 8) {
                $('#phoneHelper').text('전화번호를 입력하세요.');
            } else {
            	$('#phoneHelper').text('');
            }
		});
		$('#m_email').blur(function(){
			if($(this).val().length < 1) {
                $('#emailHelper').text('이메일 계정을 입력하세요.');
            } else {
            	$('#emailHelper').text('');
            }
		});
		
		$('#m_gender').blur(function(){
			if(!$(this).val()) {
                $('#genderHelper').text('성별을 선택하세요.');
            } else {
            	$('#genderHelper').text('');
            }
		});
		});
	
</script>
</head>
<body class="">
	<div id="cgvwrap">
    	<%@ include file="/module/top.jsp"%>
		<div id="contaniner" class=""><!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->

        	<!-- LineMap -->

        	<div id="ctl00_navigation_line" class="linemap-wrap">
           		<div class="sect-linemap">
                	<div class="sect-bcrumb">
                    	<ul>
                        	<li><a href="/"><img alt="home" src="http://img.cgv.co.kr/R2014/images/common/btn/btn_home.png" /></a></li>
                            <li >
                                <a href="/user/login/">회원서비스</a>
                            </li>
                            <li class="last">회원가입</li>
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
        <!-- //LineMap -->

		<!-- Contents Area -->
		<div id="contents" class="">
            
            <!-- Contents Start -->
			
				<!-- 실컨텐츠 시작 -->
				<div class="wrap-join-2016">
					<div class="join-hd">
						<h3><img src="http://img.cgv.co.kr/R2014/images/common/img_join_hd.jpg" alt="CGV에 오신걸 환영합니다." /></h3>
						
						<!-- 회원 가입 폼 -->
						
						<div class="col-detail" id="mycgv_contents">
					<div class="c_tab_recont on">
					<div class="tit-mycgv">
							<h3>회원 정보 입력</h3>
							</div>
					
						<div class="sect-register cjone">
							<p>※ CGV 회원이 되시면 회원 ID와 비밀번호로 CGV의 다양한 서비스를 이용하실 수 있습니다.</p>
							<br><br>
						    <div class="tbl-form">
								<form name="memberInfo" action="./memberInsertPro.jsp" method="post" onsubmit="return checkValue()">
										<table summary="나의 CGV정보 선호장르,주중선호요일,선호시간대,자주가는 CGV, Special Day 표기">
											<caption>나의 CGV정보</caption>
											<colgroup>
											<col width="19%" />
											<col width="*" />
											</colgroup>
											<tbody>
												<tr>
													<th scope="row">아이디</th>
													<td>
														<input id="m_id" name="m_id" type="text" maxlength="10">
														<input id="check_id" type="hidden">
														<button id="id_check" type="button" class="set-btn round inred on" onclick="showPopup();">														
														<span>중복 확인</span>
														</button>
														<span id="idHelper"></span>
													</td> 
												</tr>
												<tr>
													<th scope="row">비밀번호</th>
													<td>
														<input id="m_pw" name="m_pw" type="password">
														<span id="pwHelper"></span>
													</td> 
												</tr>
												<tr>
													<th scope="row">비밀번호 확인</th>
													<td>
														<input id="m_pw2" name="m_pw2" type="password">
														<span id="pw2Helper"></span>
													</td> 
												</tr>
												<tr>
													<th scope="row">권한</th>
													<td>
														<select id="m_level" name="m_level" >
															<option value="관리자">관리자</option>	
															<option value="지점관리자">지점관리자</option>
															<option value="일반">일반 회원</option>
														</select>
														<span id="levelHelper"></span>
													</td> 
												</tr>
												<tr>
													<th scope="row">이름</th>
													<td>
														<input id="m_name" name="m_name" type="text">
														<span id="nameHelper"></span>
													</td> 
												</tr>
												<tr>
													<th scope="row">휴대전화번호</th>
													<td>
														<input id="m_phone" name="m_phone" type="text" maxlength="13">
														<span id="phoneHelper"></span>
													</td> 
												</tr>
												<tr>
													<th scope="row">Email주소</th>
													<td>
														<input id="m_email" name="email_id" type="text">
													 	@
									                    <select id="url" name="email_addr">
									                        <option value="naver.com" selected="selected">네이버</option>
									                        <option value="daum.net">다음</option>
									                        <option value="nate.com">네이트</option>
									                        <option value="gamil.com">구글</option>
									                    </select>
									                    <span id="emailHelper"></span>
													</td>
												</tr>
												<tr>
													<th scope="row">생년월일</th>
													<td><input id="m_birth" name="m_birth" type="date">
													</td> 
												</tr>
											<tr>
											<tr>
												<th scope="row">선호장르</th>
												<td> 
													<label for="favorite_genre1"><strong>장르</strong></label>
													<select id="favorite_genre1" name="favorite_genre1">
														<option value="00">== 선택 ==</option>
														<option value="01">액션/모험</option>
														<option value="02">애니메이션</option>
														<option value="03">코메디</option>
														<option value="04">다큐멘터리</option>
														<option value="05">드라마</option>
														<option value="06">에로틱</option>
														<option value="07">가족/어린이</option>
														<option value="08">역사</option>
														<option value="09">공포</option>
														<option value="10">뮤지컬</option>
														<option value="11">미스터리/범죄</option>
														<option value="12">SF</option>
														<option value="13">로맨스</option>
														<option value="14">스릴러</option>
														<option value="15">전쟁</option>
														<option value="16">서부극</option>
														<option value="99">기타</option>
													</select>
												</td>
											</tr>
											<tr>
												<th scope="row"><label for="sel_gender">성별</label></th>
												<td>
													<input type="radio" id="m_gender" name="m_gender" value="남">남
													<input type="radio" id="m_gender" name="m_gender" value="여">여
													<span id="genderHelper"></span>
												</td>
											</tr>			
										</tbody>
									</table>
									<span id="m_dataCheck"></span>
									<input type="hidden" id="checkInfo" name="checkInfo">
									<br> <button type="submit" class="link-join" id="sub_pro"><span>CGV 회원 가입</span></button>
								</form>	
							</div>
						</div>
				
					<div class="join-benefit">
						<h4>CJ ONE 상세 혜택</h4>
						<ul class="benefit-list">
							<li>
								<h5>기본 적립율</h5>
								<ul class="bl-dep1">
									<li>유료 영화관람 금액의 5% 적립</li>
									<li>매점 결제 금액의 2% 적립
										<ul class="bl-dep2">
											<li>적립 방법 : 영수증 하단의 적립번호와<br />인증번호를 CGV 사이트에서 입력</li>
											<li>이벤트 기간중에만 적립 가능<br />(일부매장 제외)</li>
										</ul>
									</li>
								</ul>
							</li>
							<li>
								<h5>제휴할인 시 / 적립 가능매장</h5>
								<ul class="bl-dep1">
									<li>제휴할인 + 결제금액의 0% ~ 5% 적립</li>
									<li>CGV강동, CGV군자, Arthall<br />제외한 CGV매장</li>
								</ul>
							</li>
							<li>
								<h5>기타 적립안내 / 포인트 사용단위</h5>
								<ul class="bl-dep1">
									<li>단체할인 시, 무비머니, 관람권,<br />상품권 등으로 구매/결제 시 적립 제외</li>
									<li>최대 1일 6회(현장 또는 온라인) 또는 1일<br />24매(온라인) 예매제한</li>
									<li>사용 단위
										<ul class="bl-dep2">
											<li>매표, 매점 : 500P</li>
											<li>온라인 예매 : 10P</li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			<!-- 실컨텐츠 끝 --> 
			</div>
		</div>
	</div>
</div>
</div>
</div>
	<%@ include file="/module/bottom.jsp"%>

</body>
</html>