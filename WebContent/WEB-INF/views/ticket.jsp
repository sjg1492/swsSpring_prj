<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html lang="en">
<head>
<title>이용권</title>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="js/custom.js"></script>
<meta charset="utf-8">
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
	$("#btn").click(function(){
		$("#ticket_type").val("1")
		$("#frm").submit();
	});	
});


</script>
</head>
<body>
<form name="frm" action="ticket_checkout.do" id="frm" method="post">
	<input type="hidden" id="ticket_type" name="ticket_type"/>

</form>

<div class="super_container" style="width:1819px;height:1400px">

	<!-- Header -->
	<jsp:include page="header/header.jsp"></jsp:include>
	<!-- Header -->
	
	<!-- 빌림이용권  -->
	<div>
		<div style="margin: 0px auto; top:180px; font-size: 35px; font-weight: bold; text-align: center;">
		BILRIM MemberShip
		</div>
		<div style="margin: 0px auto; top:180px; font-size: 23px; font-weight: bold; text-align: center;">
		빌림을 즐기는 2가지방법
		</div>
		<div style="margin: 0px auto; margin-top:250px; margin-left: 615px; float: left; width: 600px; height:380px;border: 1px solid #d7d5d5;">
			<img style="margin-left: 62px; margin-top: 30px;" src="images/ticket.png">
			<div style="margin-left: 62px; margin-top: 10px;">
			빌림 7Days 이용권<br/>
			일주일동안 빌림의 모든 제품을 렌트하실 수 있습니다.<br/>
			</div>
			<input type="button" value="이용권 구매" id="btn" name="btn" style="margin-left:260px; margin-top:15px; width: 110px;height: 45px;  color:#0E6EB8; border-color:#0E6EB8; background-color:#FFFFFF;font-weight: bold; font-size: 17px; ">
		</div>
		
	</div>
	<!-- 빌림이용권  -->
	
	<!--빌림서비스  -->
	<div style="margin-top: 800px;">
		<div style="font-size: 35px; font-weight: bold; text-align: center;">
		BILRIM Cycle
		</div>
		<div style="font-size: 23px; font-weight: bold; text-align: center;">
		마음껏 누리는 빌림 서비스
		</div>
		<div>
			<img  style="margin-left: 550px; margin-top: 60px;" src="images/asd.png">
		</div>
		
	</div>
	<!--빌림서비스  -->
	
</div><!--super_container  -->
	<footer>
		<div>
			<div class="footerLogo">
				<img style="width:220px; margin-bottom: 10px;"  src="images/bilrimMent.png" >
			</div>
			<div class="text">
				(주)빌림|대표 : 송재원|사업자등록번호 : 111-11-11111 [사업자정보확인]<br/>
				주소 : 06226 서울특별시 강남구 테헤란로 132 (역삼동) 한독약품빌딩 8층
				빌림관리자 : 경제현|☎온라인고객센터(스토어관련문의):010-1234-7858<br/>
				<br/>
				COPYRIGHT(C) 2018 BILRIM® ALL RIGHT RESERVED
			</div>
		</div>
	</footer>

</body>
</html>