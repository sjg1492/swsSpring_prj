<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("total_button").click(function){
		$("#checkout_form").submit();
	}
	
	
});//ready
</script>
</head>
<body>

<div class="super_container">
	
	<!-- Header -->
	<jsp:include page="../header/header.jsp"></jsp:include>
	<!-- Header -->

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="images/bacTitle_.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_container">
						<div class="home_content">
							<div class="home_title"><a href="categories.do?target=${categori_name_side }"style="color:white;">${categori_name}</a></div>
							<div class="breadcrumbs">
								<ul>
									<c:forEach var="list" items="${sub_categori_list }">
									<% if("wallet".equals(request.getAttribute("target"))){ %>
									<li><a href="categories.do?target=${target}&sub_cate=${list.sc_name}">${list.sc_name } wallet</a></li>
									<%}else{ %>
									<li><a href="categories.do?target=${target}&sub_cate=${list.sc_name}">${list.sc_name }</a></li>
									<%}%>
									</c:forEach>
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
		 <img src="images/product_img/${prd.img1 }" style="width:225px;height:225px;" alt="">
		</div>
		<div style="float: left; margin-left:100px; margin-top: 50px;">
			<div style="float: left;">
				<div style="font-weight: bold; font-size: 25px;">
				${prd.brand }
				</div>
				<div style="font-weight: bold; font-size: 18px;">	
				${prd.prd_name }
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
				${prd.rental_fee*7} 원
				</div>
				<div style="font-size: 13px; margin-top: 0px;">	
					(${prd.rental_fee}원x7일)			
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
							<form action="checkout_process.do" id="checkout_form" method="post">
								<input type="text" class="checkout_input" placeholder="이름">
								<input type="text" class="checkout_input" placeholder="E-mail" required="required">
								<select name="phone" id="phone" class="country_select checkout_input" style="width:160px">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="012">012</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								<label style="margin-left:10px; font-size: 20px;">-</label>
								<input type="text" class="checkout_input" style="width:158px; margin-left: 10px;">
								<label style="margin-left:10px; font-size: 20px;">-</label>
								<input type="text" class="checkout_input" style="width:158px; margin-left: 10px;">
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
									<div class="cart_total_title"><strong>${prd.prd_name }</strong></div>
									<div class="cart_total_price ml-auto">금액/기간</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div class="cart_total_title">렌트가 일(￦)</div>
									<div class="cart_total_price ml-auto">${prd.rental_fee}￦</div>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<div class="cart_total_title">렌트 기간</div>
									<div class="cart_total_price ml-auto">7(일)</div>
								</li>
								<li class="d-flex flex-row align-items-start justify-content-start total_row">
									<div class="cart_total_title">총 금액</div>
									<div class="cart_total_price ml-auto">${prd.rental_fee*7}￦</div>
								</li>
							</ul>
						</div>
						<div class="payment_options">
							<input type="button" class="cart_total_button" id="total_button" value="대여하기"/>
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