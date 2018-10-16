<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>결제완료</title>
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



</script>

</head>
<body>
<div id="wrap">
<c:if test="${result}" > 

</c:if>
<div style="text-align: center;">
<label>결제가 완료되었습니다.</label>
</div><br/><br/>

<div>
	 <input type="button" value="확인" class="btn" id="btn" name="btn" onclick="winClose()"
	 			style="width:60px; font-size:16px; font-weight: bold; font-family: 맑은고딕 ;"/>
</div>


</div>



</body>
</html>