<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제창</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/final_prj/common/css/main.css"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="js/custom.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link href="plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<link rel="stylesheet" type="text/css" href="styles/s_style/main.css">
<link rel="stylesheet" type="text/css" href="styles/s_style/submenu.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">
	#wrap{width:300px; height:320px; margin: 0px auto;}
	
	#table{font-size: 15px;font-family: 맑은 고딕}
	
</style>

<script type="text/javascript">
$(function(){

	$("#logout_btn").click(function(){
		if(window.confirm("로그아웃 하시겠습니까?")){
			location.href="logout.do";
		}
	});
	
	
});


function winClose(){
	self.close();	//팝업창 닫기
}//winClose

$(document).ready(function(){
	$("#btn_payment").click(function(){
		//유효성검증
		var regexp=/^[0-9]*$/
		var card=$('input:radio[name=card]').is(':checked');
		var month=$("#month").val()
		var year=$("#year").val()
		var pass=$("#password").val()
		
		if(!card){
			alert("결제하실 카드의 종류를 선택하세요.")
			return;
		}
		if($("#cardNumber_1").val()==""||$("#cardNumber_2").val()==""||$("#cardNumber_3").val()==""||$("#cardNumber_4").val()==""){
			alert("카드번호를 입력하세요.")
			return;
		}
		//숫자만입력되게
		if(month==""){
			alert("월을 입력하세요.")
			$("#month").focus();
			return;
		}
		if(!regexp.test(month)){
			alert("숫자만 입력하세요.");
			$("#month").val("");
			$("#month").focus;
			return;
		}
		
		if(year==""){
			alert("년을 입력하세요.")
			$("#year").focus();
			return;
		}
		if(!regexp.test(year)){
			alert("숫자만 입력하세요.");
			$("#year").val("");
			$("#year").focus;
			return;
		}
		
		if(pass==""){
			alert("비밀번호를 입력하세요.")
			$("#password").focus();
			return;
		}
		if(!regexp.test(pass)){
			alert("숫자만 입력하세요.");
			$("#password").val("");
			$("#password").focus;
			return;
		}
		
		
		
		
		$("#card_Info").submit();
		
	});//click
	
});//ready

</script>

</head>
<body>
<div id="wrap">
<form id="card_Info" name="card_Info" action="payment_process.do" method="post">
<table>
	<tr>
	<td id="table" style="padding-top: 20px;">
	<input type="hidden" id="card" name="ticket_type" value="${ticket_type * 7}"/>
	<input type="radio" id="card" name="card" value="NH농협"/>NH농협
	<input type="radio" id="card"  name="card" value="신한" />신한 
	<input type="radio" id="card"  name="card" value="KB국민" />KB국민 
	<input type="radio" id="card"  name="card" value="현대" />현대 <br/>
	<input type="radio" id="card"  name="card" value="우리" />우리 
	<input type="radio" id="card"  name="card" value="하나" />하나
	<input type="radio" id="card"  name="card" value="비씨" />비씨
	<input type="radio" id="card"  name="card" value="SC리워드" />SC리워드
	</td>
	</tr>
	
	<tr>
	<td><label style="font-size: 15px;font-family: 맑은 고딕; padding-top: 20px;">카드번호</label>
		
		<input type="text" id="cardNumber_1" class="inputBox" style="width:45px; " name="cardNumber1"  maxlength="4"/>
		<label>-</label>
		<input type="text" id="cardNumber_2"  class="inputBox" style="width:45px" name="cardNumber2" maxlength="4"/>
		<label>-</label>
		<input type="text" id="cardNumber_3"   class="inputBox" style="width:45px" name="cardNumber3" maxlength="4"/>
		<label>-</label>
		<input type="text" id="cardNumber_4"   class="inputBox" style="width:45px" name="cardNumber4" maxlength="4"/>
		</td>
	</tr>
	<tr>
		<td><label style="font-size: 15px;font-family: 맑은 고딕;padding-top: 10px;">유효기간</label>
		<input type="text" id="month" name="month" maxlength="2" style="width:35px" >월
		<input type="text" id="year" name="year" maxlength="4" style="width:45px">년
		</td>
	</tr>
	
	<tr>
		<td><label  style="font-size: 15px;font-family: 맑은 고딕; padding-top: 10px;">비밀번호</label>
		<input type="password" id="password" name="password" style="width:35px" maxlength="2" />**
		</td>
	</tr>
	
	<tr>
		<td><label style="font-size: 15px;font-family: 맑은 고딕;padding-top:10px;">결제금액&nbsp;&nbsp; 9,900 원</label>
		<input type="hidden" name="price" value=""/></td>
	</tr>
	
</table>
</form>
<div style="padding-top: 25px;padding-left: 80px;">
	 <input type="button" value="취소" class="btn" id="btn_cancle" 
	 				name="btn_cancle" onclick="winClose()" 
	 				style="width:60px; font-size:16px; font-weight: bold;font-family: 맑은고딕 ; "/>&nbsp;&nbsp;
	 <input type="button" value="결제" class="btn" id="btn_payment" name="btn_payment"
	 				style="width:60px; font-size:16px; font-weight: bold;font-family: 맑은고딕"/>
</div>


</div>



</body>
</html>