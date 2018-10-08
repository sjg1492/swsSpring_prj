<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Checkout</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/checkout.css">
<link rel="stylesheet" type="text/css" href="styles/checkout_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/s_style/main.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->
	
	<header class="header">
		<div class="header_inner d-flex flex-row align-items-center justify-content-start">
			<div class="logo" ><img style="width:190px;" src="images/BILRIM.jpg" ></div>
			<nav class="main_nav">
				<ul>
					<li><a href="categories.html">가방</a></li>
					<li><a href="categories.html">시계/악세사리</a></li>
					<li><a href="categories.html">지갑</a></li>
					<li><a href="Ticket.html">이용권</a></li>
					<li><a href="#">BILRIM</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
			</nav>
			<div class="header_content ml-auto">
				
				<div class="loginSignup" style="width:300px; height:50px; right:10px; position: absolute; top:-15px">
					<!-- 로그인 -->
					<div>
						<a href="#">
							<img style="margin-top: 8px" src="images/login.png" alt="이미지를 불러오지 못하였습니다">
							</a>
							<!-- 회원가입 -->
						<a href="#">
							<img src="images/signUp.png" alt="이미지를 불러오지 못하였습니다">
						</a>
					</div>
				</div><!--shopping  -->
			</div><!--header_content ml-auto  -->
		</div>
	</header>

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/bacTitle_.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_container">
						<div class="home_content">
							<div class="home_title">BAG</div>
							<div class="breadcrumbs">
								<ul>
									<li><a href="index.html">TOTE</a></li>
									<li><a href="index.html">SHOULDER</a></li>
									<li>CROSS</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top:50px; border: 1px solid #d7d5d5; height: 250px;">
		<div style="float: left; margin-left:350px;">
		 <img src="images/ChanelBac.jpg" alt="">
		</div>
		<div style="float: left; margin-left:100px; margin-top: 50px;">
			<div style="float: left;">
				<div style="font-weight: bold; font-size: 25px;">
				Chanel
				</div>
				<div style="font-weight: bold; font-size: 18px;">	
				2.55 Flap Bag[Silver]
				</div>
				<div style="font-size: 18px; margin-top: 30px;">	
					렌트기간 > 7일			
				</div>
			</div>
			<div style="float: left; text-align: center; margin-left: 530px; margin-top: 20px;">
				<div style="font-weight: bold; font-size: 20px;">
				주문금액
				</div>
				<div style="font-weight: bold; font-size: 25px;">	
				138,600원
				</div>
				<div style="font-size: 13px; margin-top: 0px;">	
					(19,800원x7일)			
				</div>
			</div>
				
		</div>
	</div>

	<!-- Checkout -->

	<div class="checkout">
		<div class="container">
			<div class="row">

				<!-- Billing Details -->
				<div class="col-lg-6">
					<div class="billing">
						<div class="checkout_title">Rent recipient</div>
						<div class="checkout_form_container">
							<form action="#" id="checkout_form">
								<input type="text" class="checkout_input" placeholder="이름">
								<input type="text" class="checkout_input" placeholder="E-mail" required="required">
								<select name="phone" id="phone" class="country_select checkout_input" style="width:160px">
									<option value="010">010</option>
									<option value="011" >011</option>
									<option value="012" >012</option>
									<option value="013" >013</option>
									<option value="016" >016</option>
									<option value="017" >017</option>
									<option value="018" >018</option>
									<option value="019" >019</option>
								</select>
								<label style="margin-left:10px; font-size: 20px;">-</label>
								<input type="text" class="checkout_input" style="width:160px; margin-left: 10px;">
								<label style="margin-left:10px; font-size: 20px;">-</label>
								<input type="text" class="checkout_input" style="width:167px; margin-left: 10px;">
								<input type="text" class="checkout_input" placeholder="주소" required="required">
								<div class="d-flex flex-lg-row flex-column align-items-start justify-content-between">
									<input type="text" class="checkout_input checkout_input_50" placeholder="우편번호" required="required">
									<input type="text" class="checkout_input checkout_input_50"  required="required">
								</div>
								<textarea name="checkout_comment" id="checkout_comment" class="checkout_comment" placeholder="배송 요청사항"></textarea>
							</form>
						</div>
					</div>
				</div>

				<!-- Cart Details -->
				<div class="col-lg-6">
					<div class="cart_details">
						<div class="checkout_title">cart total</div>
						<div class="cart_total">
							<ul>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div class="cart_total_title">상품명</div>
									<div class="cart_total_price ml-auto">금액/기간</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div class="cart_total_title">렌트가 일(￦)</div>
									<div class="cart_total_price ml-auto">30.000￦</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div class="cart_total_title">렌트 기간</div>
									<div class="cart_total_price ml-auto">7(일)</div>
								</li>
								<li class="d-flex flex-row align-items-start justify-content-start total_row">
									<div class="cart_total_title">총 금액</div>
									<div class="cart_total_price ml-auto">210.000￦</div>
								</li>
							</ul>
						</div>
						<div class="payment_options">
							<button class="cart_total_button">구매하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer -->
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
	

	
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/checkout_custom.js"></script>
</body>
</html>