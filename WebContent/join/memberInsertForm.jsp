<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/open-clapperboard-.png.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/datepicker/bootstrap-datepicker.css">
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
		window.open("./join/idCheck.jsp", "아이디 중복 확인", "width=430, height=365, left=200, top=50");
	}
	function showidCheckPro() {
		location.href="./join/idCheck.jsp";
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
<body>
<%@ include file="/module/top.jsp"%>
        	<!-- LineMap -->
<div class="row">
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
		<!--
			텍스트정렬 클래스
			text-center, text-left, text-right
			블럭정렬
			pull-left pull-right
		 -->
		<h2 class="text-center text-success"> 			
			회원가입
		</h2>
		
		<div class="row p-xs"></div>
		
		<!-- form-horizontal : 100% 사이즈로 정렬 -->
		<!-- form-inline : 가로로 일정한 사이즈로 정렬  -->
		
		<div class="row form-inline">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="panel panel-default">
					<form class="panel-body" name="memberInfo" action="${pageContext.request.contextPath}/join/member_insert_pro.movie" method="post" onsubmit="return checkValue()">
					  	<label class="col-sm-2 control-label" for="m_id" >
						아이디
						</label>
						<div class="form-gorup">
							<input type="text" class="form-control" id="m_id" name="m_id" placeholder="아이디">
							<input type="button" class="btn btn-primary" id="memberIdSearch" value="중복확인" data-toggle="modal" data-target="#myModal2">
						</div> 
						<div class="row p-xxs"></div>
						
					  	<label class="col-sm-2 control-label" for="m_pw">
					  	비밀번호
						</label>
						<div class="form-gorup">
							<input type="password" class="form-control" id="m_pw" name="m_pw" placeholder="비밀번호">
							<input type="password" class="form-control" id="m_pw2" name="m_pw2" placeholder="비밀번호 확인">
						</div> 
						<div class="row p-xxs"></div>
						
						<label class="col-sm-2 control-label" for="m_name">
						이름
						</label>
						<div class="form-gorup">
							<input type="text" class="form-control" id="m_name" name="m_name" placeholder="이름">
						</div> 
						<div class="row p-xxs"></div>
						
						<label class="col-sm-2 control-label" for="m_gender">
						성별
						</label>
						<div class="form-gorup">
							<input type="radio" class="form-control" id="m_gender" name="m_gender" value="남">남
							<input type="radio" class="form-control" id="m_gender" name="m_gender" value="여">여
						</div> 
						<div class="row p-xxs"></div>
						
						<label class="col-sm-2 control-label" for=m_phone>
						휴대전화번호
						</label>
						<div class="form-gorup">
							<input type="text" class="form-control" id="m_phone" name="m_phone" placeholder="휴대전화번호">
						</div> 
						<div class="row p-xxs"></div>
						
					  	<label class="col-sm-2 control-label" for="memberPost">
						주소
						</label>
						<div class="form-gorup">
							<input type="text" class="form-control" id="memberPostNo" placeholder="우편번호">
							<input type="button" class="btn btn-primary" id="memberPostBtn" value="우편 번호 찾기">
						</div> 
						<label class="col-sm-2 control-label" for="memberPost">
						</label>
						<div class="form-gorup">
							<input type="text" class="form-control" id="memberPost" placeholder="도로명 주소">
							<input type="text" class="form-control" id="memberPost2" placeholder="상세 주소">
						</div> 
						<div class="col-sm-10">
						</div>
						<div class="row p-xxs"></div>
						
					  	<label class="col-sm-2 control-label" for="email_id">
						이메일
						</label>
						<div class="form-gorup">
							<input type="text" class="form-control" id="email_id" name="email_id" placeholder="이메일 아이디">
							@
							<select id="url" name="email_addr" class="form-control">
		                        <option value="naver.com" selected="selected">네이버</option>
		                        <option value="daum.net">다음</option>
		                        <option value="nate.com">네이트</option>
		                        <option value="gamil.com">구글</option>
		                    </select>
						</div>
						<div class="col-sm-10">
						</div>
						<div class="row p-xxs"></div>
						
					  	<label class="col-sm-2 control-label" for="m_birth">
						생년월일
						</label>
						<div class="col-sm-10">
							<div class="input-group date form-gorup">
								<span class="input-group-addon">
									<i class="glyphicon glyphicon-calendar"></i>
								</span>
								<input type="text" class="form-control" id="m_birth" name="m_birth" readonly="readonly">
							</div>
						</div>
						<div class="row p-xxs"></div>
						
						<label class="col-sm-2 control-label" for="m_genre">
						선호장르
						</label>
						<div class="form-gorup">
							<select id="m_genre" name="m_genre" class="form-control">
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
						</div> 
						<div class="row p-xxs"></div>
						
						<div class="col-sm-10"></div>
						<div class="col-sm-2">
							<button type="submit" class="btn btn-primary">회원 가입</button>
						</div>
			  		</form>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-2"></div>
</div>


<!-- Modal -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">
        	회원 아이디 중복검사
        </h4>
      </div>
      <div class="modal-body">
      	<div class="form-inline form-group">
      			회원 아이디 : 
      		<input type="text" id="memberSearchId" class="form-control">
      		<button type="button" id="memberIdSearchBtn" class="btn btn-primary">
      		아이디조회
      		</button>
      	</div>
      		<div class="alert alert-success" style="display: none;" id="alertSuccess">
      			사용가능합니다.
      		</div>
      		<div class="alert alert-danger" style="display: none;" id="alertDanger">
      			사용할수 없는 아이디입니다.
      		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" id="closeBtn" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
			<!-- 실컨텐츠 끝 --> 
<%@ include file="/module/bottom.jsp"%>
<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/locales/bootstrap-datepicker.ko.min.js" charset="UTF-8"></script>
<script type="text/javascript">
$('.datepicker').datepicker({
    language: 'ko'
});
$('.input-group.date').datepicker({
	format: 'yyyy-mm-dd',
	autoclose : true,
	language : 'ko'
});
	var check = false;
	$('#myModal2').on('shown.bs.modal', function () {
		$('#memberSearchId').val($('#m_id').val());
		$('#alertSuccess').hide();
		$('#alertDanger').hide();
		 //alert('호출되었습니다.');
	});
	$('#myModal2').on('hidden.bs.modal', function () {
		console.log(check);
		if(check) {
			$('#m_id').val($('#memberSearchId').val());
		} else {
			$('#m_id').val('');
		}
		// alert('닫기');
	});
	$('#memberIdSearchBtn').click(function () {
		var checkId = "id001";
		if($('#memberSearchId').val() == checkId ) {
			$('#alertSuccess').hide();
			$('#alertDanger').show();
			check = false;
			return check;
		} else {
			$('#alertDanger').hide();
			$('#alertSuccess').show();
			check = true;
			return check;
		}
	});
	
    $('#memberPostBtn').click(function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('memberPostNo').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('memberPost').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('memberPost2').focus();
            }
        }).open();
    });
</script>
</body>
</html>