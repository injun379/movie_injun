<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" media="all" type="text/css" href="../css/reset.css" />
<link rel="stylesheet" media="all" type="text/css" href="../css/layout.css" />
<link rel="stylesheet" media="all" type="text/css" href="../css/module.css" />
<link rel="stylesheet" media="all" type="text/css" href="../css/common.css" />
<link rel="stylesheet" media="all" type="text/css" href="../css/content.css" />
<link rel="stylesheet" media="all" type="text/css" href="../css/eggupdate.css" />
<link rel="stylesheet" media="print" type="text/css" href="../css/print.css" />
<link rel="stylesheet" media="all" type="text/css" href="../css/content_1207.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>영화 그 이상의 감동, CGV</title>
<%@ page import = "java.net.*" %>
<%
String checkResult = request.getParameter("checkMsg");
String checkID = request.getParameter("input_id");
System.out.println(checkID+" <-- checkID idCheck.jsp");
System.out.println(checkResult+" <-- checkResult idCheck.jsp");
String checkMsg = "중복 확인을 클릭하세요.";

if(checkResult.equals("NO")) {
	checkMsg = "이미 사용 중인 아이디입니다.";
} else {
	checkMsg = "사용 가능한 아이디입니다.";
}
%>
<script type="text/javascript">
	function showidCheckPro() {
		location.href="idCheckPro.jsp?m_id="+$('#id_check').val();
	}
	function fn_press_han(obj){
		obj.value = obj.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '');
		}
	function moveClose() {
		  opener.location.href="memberInsertForm.jsp";
		  self.close();
		}
	function sendCheckValue(){
        // 중복체크 결과인 idCheck 값을 전달한다.
        //opener.document.memberInfo.idDuplication.value ="idCheck";
        // 회원가입 화면의 ID입력란에 값을 전달
        opener.document.memberInfo.m_id.value = document.getElementById("id_check").value;
        
        if (opener != null) {
            opener.chkForm = null;
            self.close();
        }    
    } 
	$(document).ready(function(){
		var checkRe = "";
		checkRe = "<%= checkResult %>";
		console.log(checkRe);
		if(checkRe = 'NO') {
			$('#id_check').val('');
		} 
	});
</script>

</head>
<body id="body">

<!-- Contents Start -->

<div class="layer-wrap" style="position:static; top:auto; left:auto;">
    <div class="popwrap" style="width:400px;">
        <h1>아이디 중복 확인</h1>
        <div class="pop-contents">
        <!-- Contents Addon -->
        <form name="idDuplication" id="idDuplication" action="./idCheckPro.jsp">
            <div class="sect-profile-modify">
                <div class="profile-modify">
                    <dl>
                        <dt><strong><%= checkMsg %></strong></dt>
                        <dd>
                            <p>영문, 숫자 혼용 가능(10자 이내)</p>
                            <p>
                                <label>아이디 입력</label>
                                <input type="text" id="id_check" name="m_id" onkeyup="fn_press_han(this);" maxlength="10" class="s-medium" value="<%= checkID %>"/>
                            </p>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="set-btn">
             	<button id="check_duplication" type="submit" class="round black"><span>중복확인</span></button>
                <button type="button" id="save" class="round inblack" onclick="sendCheckValue()"><span>사용하기</span></button> 
                <button type="button" id="btn_cancel" class="round gray" onclick="self.close();"><span>취소</span></button>
            </div>
        </form>
        <!-- //Contents Addon -->
        </div>
        <button type="button" id="btn_close" class="btn-close" onclick="self.close();">아이디 중복 확인 팝업 닫기</button>
    </div>
</div>
</body>
</html>