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
<script type="text/javascript">
	function fn_press_han(obj){
		obj.value = obj.value.replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '');
		}
	function moveClose() {
		  opener.location.href="memberInsertForm.jsp";
		  self.close();
		}
</script>
</head>
<body id="body">

<!-- Contents Start -->

<div class="layer-wrap" style="position:static; top:auto; left:auto;">
    <div class="popwrap" style="width:400px;">
        <h1>아이디 중복 확인</h1>
        <div class="pop-contents">
        <!-- Contents Addon -->
        <form name="aspnetForm" method="post" action="./edit-profile.aspx" id="aspnetForm" enctype="multipart/form-data">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTEzMzEyMTU4NDhkZKBq30lYyDwm3Ruh/yZqZxg++4HF" />
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4E92C5CF" />
</div>
            <div class="sect-profile-modify">
                <div class="profile-modify">
                    <dl>
                        <dt><strong>아이디</strong></dt>
                        <dd>
                            <p>영문, 숫자 혼용 가능(10자 이내)</p>
                            <p>
                                <label for="nick_name">아이디 입력</label>
                                <input type="text" id="nick_name" name="id_check" onkeyup="fn_press_han(this);" maxlength="10" class="s-medium" />
                               
                            </p>
                        </dd>
                    </dl>
                </div>
            </div>
            <div class="set-btn">
             	<button id="check_duplication" type="button" class="round black"><span>중복확인</span></button>
                <button type="button" id="save" class="round inblack" onclick="moveClose()"><span>등록하기</span></button> 
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