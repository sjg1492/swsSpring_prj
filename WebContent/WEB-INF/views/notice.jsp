<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<link rel="stylesheet" type="text/css" href="http://localhost:8080/html_prj/common/css/main.css"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<style type="text/css">
/* 전체 틀 */
#wrap{margin: 0px auto;width:1400px;height:1000px;}
/* 가운데 구역(왼쪽,오른쪽) */
#contents{width: 1400px;height: 800px;}
/* 왼쪽 메뉴바 */
#aside{width:297px; height:1000px; float: left; border-right: 3px solid #333;padding-left: 70px;}
/* 오른쪽 구역 */
#section{width:1100px; height:1000px; float:left;}

/* 테이블 */
#article_table{width: 900px;height:300px; margin-left: 100px;margin-top: 60px;
    border-top:2px solid #5b7ce5; text-align: center;}
#number{width: 50px;}
#voucher{width: 120px;}
#buy_Date{width: 120px;}
#use_Date{width: 120px;}
#times{width: 120px;}
#submenu{font-size: 25px;letter-spacing:2px;position: absolute;}

/* 페이지번호 */
#article_number{text-align: center;margin-top: 60px;}

th{border-bottom:1px solid #e7e7e7; height:50px; text-align: center;
background-color: #fdfdfd;color:#545454;font-size: 18px;font-weight: bold;}
td{border-bottom: 1px solid #e7e7e7;height:35px; text-align: center;font-size: 14px;letter-spacing:1px;}
tr:hover{background-color: #eae9f7;}
a{color: black;}

/* footer 시작 */
#footer{width:1400px; height:200px; bottom:0;}
/* footer 끝 */
</style>
</head>

<body >
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

<div id="wrap">
 <!-- wrap 1400(w)x1000(h) -->

<div id="contents">

<div id="section" >
 <p style="font-size:40px;font-weight:bold;margin-top: 60px;margin-left: 50px;letter-spacing:3px;">공지사항</p>

<table id="article_table"  >
<thead>
 <tr>
   <th id="number">No</th>
   <th id="voucher">이용권명</th>
   <th id="buy_Date">구매날짜</th>
   <th id="use_Date">사용기간</th>
   <th id="times">사용횟수/남은횟수</th>
 </tr>
</thead>

<tbody>
 <tr>
   <td>1</td>
   <td>Premium 정기이용권</td>
   <td>2018/08/31</td>
   <td>2018/09/30</td>
   <td>1/2</td>
 </tr>
 <tr>
   <td>1</td>
   <td>Premium 정기이용권</td>
   <td>2018/08/31</td>
   <td>2018/09/30</td>
   <td>1/2</td>
 </tr>
 <tr>
   <td>1</td>
   <td>Premium 정기이용권</td>
   <td>2018/08/31</td>
   <td>2018/09/30</td>
   <td>1/2</td>
 </tr>
 <tr>
   <td>1</td>
   <td>Premium 정기이용권</td>
   <td>2018/08/31</td>
   <td>2018/09/30</td>
   <td>1/2</td>
 </tr>
 <tr>
   <td>5</td>
   <td>Premium 정기이용권</td>
   <td>2018/08/31</td>
   <td>2018/09/30</td>
   <td>1/2</td>
 </tr>
</tbody>
</table>

<!-- 페이지번호 -->
<div id="article_number">

 <nav>
   <ul class="pagination">
     <li><a href="#"><span aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
     <li><a href="#">1</a></li>
     <li><a href="#">2</a></li>
     <li><a href="#">3</a></li>
     <li><a href="#">4</a></li>
     <li><a href="#">5</a></li>
     <li><a href="#"><span aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
   </ul>
 </nav>

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
