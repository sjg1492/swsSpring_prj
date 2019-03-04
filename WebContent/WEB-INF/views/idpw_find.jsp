<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID/PW 찾기</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/jsp_prj/common/css/main.css">
<!-- CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> 
<script type="text/javascript">
$(function() {
	
	$("#logout_btn").click(function(){
		if(window.confirm("로그아웃 하시겠습니까?")){
			location.href="logout.do";
		}
	});
	
	$("#id_find").click(function() {
		var name=$("#name").val();
		var email=$("#email").val();
		if(name==""){
			alert("이름이 입력되지 않았습니다.")
			return
		}
		if(email==""){
			alert("이메일이 입력되지 않았습니다.")
			return
		}
		var info_data = {
				name: name,
				email: email,
		 };
		
		$.ajax({
			type : 'POST',
			data : info_data,
			url : 'id_find.do',
			dataType : 'json',
			success : function(data) {
				if (data.id != null) {
					alert("회원님의 아이디는  "+data.id+"입니다.")
				} else {
					alert("계정이 존재하지않습니다.")
				}
			}
		});//ajax
		
	});//click
	
	$("#pw_find").click(function() {
		var id=$("#id").val();
		var pw_hint=$("#pw_hint").val();
		var pw_answer=$("#pw_answer").val();
		if(id==""){
			alert("이름이 입력되지 않았습니다.")
			return
		}
		if(pw_answer==""){
			alert("비밀번호 힌트 답변이 입력되지 않았습니다.")
			return
		}
		var info_data = {
				id: id,
				pw_hint: pw_hint,
				pw_answer: pw_answer
		 };
		
		$.ajax({
			type : 'POST',
			data : info_data,
			url : 'pw_find.do',
			dataType : 'json',
			success : function(data) {
				if (data.pass != null) {
					alert("회원님의 비밀번호는  "+data.pass+" 입니다.")
				} else {
					alert("입력값이 올바르지 않습니다.")
				}
			}
		});//ajax
		
	});//click
	
	
});//function
</script>

</head>
<body>

<div style="font-weight: bold;">
아이디/비밀번호 찾기
</div>
<div style="font-size: 13px; margin-top: 5px;">
아래의 사용자 확인 방법중 하나를 선택해주세요.
</div>
<!-- 아이디 찾기  -->
<div style="margin-left: 20px;margin-top:20px; border:1px solid #d7d5d5; width: 45%; height: 250px; float: left;">
	<div style="margin-top: 30px; margin-left: 10px;">
	<div style="font-weight: bold; font-size: 15px;">
	이름/이메일주소로 아이디 찾기
	</div>
		<div style="margin-top: 35px;" >
			<div style="float: left;">이름</div>
			<div style="float: left; margin-left: 35px;"><input type="text" style="width: 220px;" id="name" ></div>
		</div>
		
		<div style="margin-top: 70px;">
			<div style="float: left">이메일</div>
			<div style="float: left;  margin-left: 20px;"><input type="text" style="width: 220px;" id="email"></div>
		</div>
		<div style="margin-top: 140px; margin-left: 110px;" >
			<input type="button" value="아이디찾기" style="width: 100px;" id="id_find">
		</div>
	</div>
	
</div>

<!--비밀번호찾기  -->
<div style="margin-left: 20px;margin-top:20px; border:1px solid #d7d5d5; width: 45%; height: 250px; float: left;">
	<div style="margin-top: 30px; margin-left: 10px;">
	<div style="font-weight: bold; font-size: 15px;">
	아이디/비밀번호 힌트로 비밀번호찾기 
	</div>
		<div style="margin-top: 20px;" >
			<div style="float: left;">아이디</div>
			<div style="float: left; margin-left: 110px;"><input type="text" style="width: 130px;" id="id"></div>
		</div>
		
		<div style="margin-top: 60px;">
			<div style="float: left">비밀번호 힌트</div>
			<div style="float: left;  margin-left: 57px;">
				<select  id="pw_hint" style="height: 23px;" >
						<option value="1">가장기억에남는장소는?</option>
						<option value="2">출신한 초등학교 이름은?</option>
						<option value="3">어린시절 별명은?</option>
						<option value="4">아버님의 성함은?</option>
				</select>
			</div>
			<div >
				<div style="float: left; margin-top: 10px;">비밀번호 힌트 답변</div>
				<div style="float: left;  margin-left: 20px; margin-top: 10px;">
						<input type="text" id="pw_answer" style="width:150px"/>
				</div>
			</div>
			
		</div>
		<div style="margin-top: 140px; margin-left: 110px;" >
			<input type="button" value="비밀번호찾기" style="width: 100px;" id="pw_find"> 
		</div>
		
	</div>
	
</div>




</body>
</html>