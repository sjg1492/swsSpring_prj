<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Categories</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="styles/categories.css">
<link rel="stylesheet" type="text/css" href="styles/categories_responsive.css">
<link rel="stylesheet" type="text/css" href="styles/s_style/main.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->
	<jsp:include page="../header/header.html"></jsp:include>
	<!-- Header -->
	
	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/bacTitle_.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_container">
						<div class="home_content">
							<div class="home_title">${categori_name}</div>
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

	<!-- Products -->

	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col-12">
					
					<!-- Sidebar Left -->

					<div class="sidebar_left clearfix">

						
						<!-- Categories -->
						<div class="sidebar_section">
							<div class="sidebar_title">${categori_name} Categories</div>
							<div class="sidebar_section_content">
								<ul>
									<li><a href="#">TOTE</a></li>
									<li><a href="#">SHOULDER</a></li>
									<li><a href="#">CROSS</a></li>
								</ul>
							</div>
						</div>
						
					
						<!-- Best Sellers -->

					</div>
					<div class="current_page">${categori_name}                                                                                                                                 </div>
				</div>
				<div class="col-12">
					<div class="product_sorting clearfix">
						<div class="sorting">
							<ul class="item_sorting">
								<li>
									<span class="sorting_text">Show all</span>
									<i class="fa fa-caret-down" aria-hidden="true"></i>
									<ul>
										<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>Show All</span></li>
										<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "price" }'><span>Price</span></li>
										<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "stars" }'><span>Stars</span></li>
									</ul>
								</li>
								<li>
									<span class="sorting_text">Show</span>
									<span class="num_sorting_text">12</span>
									<i class="fa fa-caret-down" aria-hidden="true"></i>
									<ul>
										<li class="num_sorting_btn"><span>3</span></li>
										<li class="num_sorting_btn"><span>6</span></li>
										<li class="num_sorting_btn"><span>12</span></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="row products_container">
				<div class="col">
					
					<!-- Products -->

					<div class="product_grid">

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_4" data-rating="4">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Woman's</a></div>
									<div class="product_price">$45.00</div>
								</div>
								<div class="product_options">
									<a href="checkout.html">
										<div class="product_fav product_option">BILRIM</div>
									</a>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_5" data-rating="5">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">2 Piece Swimsuit</a></div>
									<div class="product_price">$35.00</div>
								</div>
								<div class="product_options">
									 
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_3" data-rating="3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
									<div class="product_price">$145.00</div>
								</div>
							<div class="product_options">
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_3" data-rating="3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
									<div class="product_price">$145.00</div>
								</div>
								<div class="product_options">
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_3" data-rating="3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
									<div class="product_price">$145.00</div>
								</div>
								<div class="product_options">
									 
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_3" data-rating="3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
									<div class="product_price">$145.00</div>
								</div>
								<div class="product_options">
									 
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_3" data-rating="3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
									<div class="product_price">$145.00</div>
								</div>
								<div class="product_options">
									 
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_3" data-rating="3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
									<div class="product_price">$145.00</div>
								</div>
								<div class="product_options">
									 
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_3" data-rating="3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
									<div class="product_price">$145.00</div>
								</div>
								<div class="product_options">
									
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_3" data-rating="3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
									<div class="product_price">$145.00</div>
								</div>
								<div class="product_options">
									
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_3" data-rating="3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
									<div class="product_price">$145.00</div>
								</div>
								<div class="product_options">
									
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

						<!-- Product -->
						<div class="product">
							<div class="product_image"><img src="images/ChanelBac.jpg" alt=""></div>
							<div class="rating rating_3" data-rating="3">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href="product.html">Man Blue Jacket</a></div>
									<div class="product_price">$145.00</div>
								</div>
								<div class="product_options">
									
									<div class="product_fav product_option">BILRIM</div>
								</div>
							</div>
						</div>

					</div>
				</div>
					
			</div>
		</div>
		
		<!-- Sidebar Right -->
		<div class="sidebar_right clearfix">

			<!-- Promo 1 -->
			<div class="sidebar_promo_1 sidebar_promo d-flex flex-column align-items-center justify-content-center">
				<div class="sidebar_promo_image" style="background-image: url(images/truck.jpg)"></div>
				<div class="sidebar_promo_content text-center">
					<div class="sidebar_promo_subtitle">배송 시스템</div>
					<div class="sidebar_promo_button"><a href="checkout.html">MOVE</a></div>
				</div>
			</div>

			<!-- Promo 2 -->
			<div class="sidebar_promo_2 sidebar_promo">
				<div class="sidebar_promo_image" style="background-image: url(images/bn.jpg)"></div>
				<div class="sidebar_promo_content text-center">
					<div class="sidebar_promo_subtitle" >빌림이 처음이신가요?</div>
					<div class="sidebar_promo_button"><a href="checkout.html">MOVE</a></div>
				</div>
			</div>
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

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.js"></script>
<script src="plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="js/categories_custom.js"></script>
</body>
</html>