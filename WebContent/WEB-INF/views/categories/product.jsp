<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Product</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/product_custom.js"></script>
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/product.css">
<link rel="stylesheet" type="text/css" href="styles/product_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/s_style/main.css">
</head>
<body>
 	<!--  -->
 	<jsp:include page="../header/header.jsp"></jsp:include>
 	<!--  -->
 <div class="super_container">
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
									<li>SHOULDER</li>
									<li>CROSS</li>
								</ul>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 	<!-- Product -->
 	<div class="product">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="current_page">
						<ul>
							<li><a href="categories.html">BAG</a></li>
							<li><a href="categories.html">SHOULDER</a></li>
							<li>CHENEL 2.55</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row product_row">
 				<!-- Product Image -->
				<div class="col-lg-7">
					<div class="product_image">
						<div class="product_image_large"><img src="images/ChanelBac.jpg" alt=""></div>
						<div class="product_image_thumbnails d-flex flex-row align-items-start justify-content-start">
							<div class="product_image_thumbnail" style="background-image:url(images/ChanelBac.jpg)" data-image="images/ChanelBac.jpg"></div>
							<div class="product_image_thumbnail" style="background-image:url(images/ChanelBac.jpg)" data-image="images/ChanelBac.jpg"></div>
						</div>
					</div>
				</div>
 				<!-- Product Content -->
				<div class="col-lg-5">
					<div class="product_content">
						<div class="product_name">CHANEL</div>
						<div class="product_price">2.55 Flap Bag[Silver]</div>
						<!-- In Stock -->
						<div class="product_text">
							<span style="font-weight: bold;">상품번호</span>
							<span style="margin-left: 55px">1670420</span><br/>
							<span style="font-weight: bold;">시중가</span>
							<span style="margin-left: 70px">6,000,000￦</span><br/>
							<span style="font-weight: bold;">렌트가</span>
							<span style="margin-left: 70px">35,000￦</span>
							<span>(최소 7일~최대 90일 사용가능)</span><br/>
						</div>
						<!-- Product Quantity -->
						<div class="product_quantity_container">
							<span>렌트기간</span>
							<div class="product_quantity clearfix">
								<span id="quantity_input" ><input type="text" pattern="[0-9]*" value="7일"></span>
								<div class="quantity_buttons">
									<div id="quantity_inc_button" class="quantity_inc quantity_control"><i class="fa fa-caret-up" aria-hidden="true"></i></div>
									<div id="quantity_dec_button" class="quantity_dec quantity_control"><i class="fa fa-caret-down" aria-hidden="true"></i></div>
								</div>
							</div>
						</div>
						<!-- Product Size -->
						<div class="product_size_container">
							<div class="button cart_button" style="float: left;"><a href="#">렌트하기</a></div>
							<div class="button cart_button" style="float: left; margin-left: 10px"><a href="#">상품문의</a></div>
							<div class="button cart_button" style="float: left; margin-left: 10px"><a href="#">장바구니</a></div>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div style="margin-top:50px; border-top: 1px solid #2f2f2f">
				<!--배송정보  -->
				<div style="margin-top: 80px; font-size: 22px">
					<span style="font-weight: bold;">배송정보</span> <span style="margin-left: 95px; font-size: 15px">국내 배송상품 1~2일 이내(주말,공휴일 제외)</span><br/>
				</div>
				<div style="margin-top: 50px; font-size: 22px">
					<span style="font-weight: bold;">색상</span> <span style="margin-left: 135px; font-size: 15px">Silver</span><br/>
				</div>
				<div style="margin-top: 50px; font-size: 22px">
					<span style="font-weight: bold;">사이즈</span> <span style="margin-left: 115px; font-size: 15px">가로 : 41 세로 : 26 폭 :19<br/><span style="margin-left: 185px;font-size: 10px; color:#A49E9E">디자인,소재,측정,위치 및 방법에 따라 1~3cm정도 오차가 생길수 잇습니다</span></span><br/>
				</div>
				<div style="margin-top: 40px; font-size: 22px">
					<span style="font-weight: bold;">상품상세정보</span> <span style="margin-left: 50px; font-size: 15px">이태리 정통 럭셔리 브랜드 체사레 토트백입니다. 브랜드 최고급 프리미엄 라인인 파인톤 소재의 백으로 오직 빌림에서만 경험해보세요.</span><br/>
				</div>
			</div>
			
			<div style="border-top: 1px solid #2f2f2f; margin-top: 80px"></div>
			<div style="margin-top: 50px; margin-left: -70px; ">
			<img alt="" src="images/info.png">
			</div>
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
 </div>
 </body>
</html> 