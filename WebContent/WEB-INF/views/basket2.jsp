<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/jsp_prj/common/css/main.css">
<!--CDN-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> 
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
</head>
<body>

<div class="super_container" style="width:300px; height: 150px">

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
	장바구니<img src="images/cart.png" width=100px; height="100px"/><br/>
	<table style="width:700px; border:1px solid #333">
		<tr>
		   <th id="item">상품</th>
		   <th id="item_info">상품 정보</th>
		   <th id="price">가격 정보</th>
 		</tr>
		<tr>
			<td style="width:30px;">
				&nbsp;&nbsp;<input type="checkbox" style="float: middle"/>
			</td>
			<td style="width:30px;">
				<img src="images/item.png"/>
			</td>
			<td>
				<strong>Channel bag</strong><br/>대여가능
			</td>
			<td>
				대여 가능<br/>
				<strong>30,000원</strong>
			</td>
	</table><br/>
	<div style="font-size: 20px">
		<strong>총 금액<br/>xxx원</strong>
	</div>
	<div style="float: right">
		<input type="button" value="CheckOut" style="width:100px; height:40px"/>&nbsp;&nbsp;<input type="button" value="삭제" style="width:100px; height:40px"/>
	</div>
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
</html>