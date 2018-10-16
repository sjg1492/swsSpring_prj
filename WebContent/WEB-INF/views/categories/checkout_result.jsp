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
<script type="text/javascript">
$(function(){

	$("#logout_btn").click(function(){
		if(window.confirm("로그아웃 하시겠습니까?")){
			location.href="logout.do";
		}
	});
	
	
});
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
	<div style="margin-top:50px; padding-top:100px;font-size:25px; border: 1px solid #d7d5d5; height: 250px;text-align: center;vertical-align:middle ">
		${result}
		<br>
		<a href="#" style="font-size:16px;color:black;" >메인으로 가기</a>
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