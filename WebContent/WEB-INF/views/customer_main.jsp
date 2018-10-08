<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
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
<style type="text/css">
#a_tag a{color:black}
</style>
</head>
<body>

<div class="super_container" style="width:300px; height:150px;">

	<!-- Header -->
	<header class="header">
		<div class="header_inner d-flex flex-row align-items-center justify-content-start">
			<div class="logo"><img style="width:190px;" src="images/BILRIM.jpg" ></div>
			<nav class="main_nav">
				<ul>
					<li><a href="#">가방</a></li>
					<li><a href="categories.html">시계/악세사리</a></li>
					<li><a href="#">지갑</a></li>
					<li><a href="#">이용권</a></li>
					<li><a href="#">BILRIM</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
			</nav>
			<div class="header_content ml-auto">
				<div class="search header_search">
					<form action="#">
						<input type="search" class="search_input" required="required" style="left:250px; top:-22px">
						<button type="submit" id="search_button" class="search_button" style="left:470px; top:-5px"><img src="images/magnifying-glass.svg" alt=""></button>
					</form>
				</div>
				<div class="shopping">
				
					<!-- 장바구니 -->
					<a href="#">
						<div class="cart">
							<img src="images/shopping-bag.svg" alt="">
						</div>
					</a>
					<!-- 위시리스트 -->
					<a href="#">
						<div class="wish">
							<img src="images/wish.png" alt="">
						</div>
					</a>
					<!-- 사용자정보 -->
					<a href="#">
						<div class="avatar">
							<img src="images/avatar.svg" alt="">
						</div>
					</a>
					<span> 사용자님 </span>
				</div>
			</div>
		</div>
	</header>
	
</div>

<div style="width:700px; margin:0px auto">
	<!-- Start Menu -->
	<div style="font-size: 25px;">
	<strong>CUSTOMER SERVICE</strong>
	</div>
	<br/>
	<div style="border: 2px solid #333; text-align: center;">
		<div style="font-size: 30px; font-weight: bold">
		고객님,<br/>
		무엇을 도와드릴까요?<br/>
		1577-2222<br/><br/>
		</div>
		평일 : 10:00 ~ 18:00<br/>
		토요일과 법정공휴일은 휴무입니다.<br/>
	</div><br/>
	<table>
	<tr>
		<td style="width:350px;
			text-align: center; vertical-align: middle; border-right:1px solid #333">
			<strong style="font-size: 25px">1:1 문의</strong><br/>
			통화량이 많아 고객센터 전화연결이 어려우실 경우<br/>
			1:1 문의게시판에 글을 남겨 주십시오.<br/>
			최대한 신속하게 답변을 드리겠습니다. <br/>
			<a href="inquiry1.do"><img src="images/go.png" width=40px/></a>
		</td>
		<td style="floor:right; width:330px; text-align: center;"><br/>
			<img src="images/kakao.png" width=40px/><br/>
			<strong style="font-size: 25px">카카오톡</strong><br/>
			편하게 카톡으로 문의주시면 실시간 안내를<br/>
			받으실 수 있습니다.<br/>
			(토요일과 법정 공휴일 제외)<br/><br/>
			카톡ID : 빌림<br/>
			평일 : 10:00~18:00
		</td>
	</tr>
	</table><br/>
	
	<div style="text-align: center; border: 1px solid #333; width:700px; height:35px">
		<strong style="font-size: 25px">FAQ</strong>
	</div><br/>
	<div id="a_tag" style="text-align: center;">
		<a href="faq1.jsp" target="num">Best</a>|
		<a href="faq2.jsp" target="num">주문/주문 취소</a>|
		<a href="faq3.jsp" target="num">배송/포장</a>|
		<a href="faq4.jsp" target="num">교환/환불AS</a>|
		<a href="faq5.jsp" target="num">결제 및 기타문의</a>
	</div>
	<iframe src="http://localhost:8080/Bilrim_final_prj/BILRIM/faq1.jsp" width="700" height="300" frameborder="0"
		scrolling="auto" name="num"></iframe>
</div>


<footer>
	<div>
	<div class="footerLogo">
		<img style="width:220px;" src="images/bilrimMent.png" >
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
<!-- End Body -->
</html>