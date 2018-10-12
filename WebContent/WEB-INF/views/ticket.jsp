<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Wish</title>

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
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		location.href="login.do"
	});
	$("#btn2").click(function(){
		location.href="ticket_checkout.do"
	});
});


</script>
</head>
<body>

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
		<div style="margin: 0px auto; margin-top:250px; margin-left: 460px; float: left; width: 400px; height:400px;border: 1px solid #d7d5d5;">
			<img style="margin-left: 42px; margin-top: 30px;" src="images/noPremiumTicket.png">
			<div style="margin-left: 52px; margin-top: 10px;">
			Premium 정기 이용권<br/>
			-<br/>
			월 1회 무료 교환 / 모든 제품 활인율 10%<br/>
			월 40,000원<br/>
			</div>
			<input type="button" value="이용권 구매" id="btn1" name="btn1" style="margin-left:260px; margin-top:15px; width: 100px;height: 40px;  color:#0E6EB8; border-color:#0E6EB8; background-color:#FFFFFF ">
		</div>
		<div style="margin-top:250px; margin-left:60px; float: left; width: 400px; height:400px;border: 1px solid #d7d5d5;">
			<img  style="margin-left: 42px; margin-top: 30px;" src="images/noShortTicket.png">
			<div style="margin-left: 52px; margin-top: 10px;">
			단기 이용권<br/>
			-<br/>
			원하는 아이템 무엇이든 단기간 렌트 가능<br/>
			일 4,900원<br/>
			</div>
			<input type="button" value="이용권 구매" id="btn2" name="btn2"  style="margin-left:260px; margin-top:15px; width: 100px;height: 40px; color:#0E6EB8; border-color:#0E6EB8; background-color:#FFFFFF  " >
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