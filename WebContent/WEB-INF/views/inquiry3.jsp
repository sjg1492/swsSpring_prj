<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용권내역</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/html_prj/common/css/main.css"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="js/custom.js"></script>
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
<link rel="stylesheet" type="text/css" href="styles/s_style/submenu.css">
<style type="text/css">

/* 전체 틀 */
#wrap{margin: 0px auto;width:1400px;height:1100px; 
		font-family: Malgun Gothic; padding-top: 100px;}

/* 가운데 구역(왼쪽,오른쪽) */
#contents{width: 1400px;height: 1000px;}


/* 오른쪽 구역 */
#section{width:1100px; height:1000px; float:left;}


/* 테이블 */
#article_table{width: 900px;height:300px; margin-left: 100px;margin-top: 60px;
				border-top:2px solid #094d8b;text-align: center; }
#number{width: 50px;}
#voucher{width: 120px;}
#buy_Date{width: 120px;}
#use_Date{width: 120px;}
#times{width: 120px;}

/* 페이지번호 */
#article_number{margin-left:435px; margin-top: 60px;}

th{border-bottom:1px solid #333; 
height:50px; text-align: center;font-size: 18px;font-weight: bold;}

td{border-bottom: 1px solid #e7e7e7;height:35px; text-align: center;
	font-size: 14px;letter-spacing:1px; border-bottom: 1px solid #333;}
tr:hover{background-color: #eae9f7;}
p,a{color: black;}

</style>

</head>

<body>
<form id="frm" method="get" action="inquiry2.jsp">
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
<div id="aside">
	<p style="font-size: 35px;margin-top: 80px; padding-left: 60px;font-weight: bold;">고객 센터</p>

<div id="line" >

</div>	  

<ul id="submenu" >  
	<li><img class="images" src="images/mark.png"  >  <a href="#">이용권 내역</a>  </li>  
	<li><img class="images" src="images/mark.png"  >  <a href="#">대여 내역</a>  </li>  
	<li><img class="images"  src="images/mark.png"  >  <a href="#">문의 내역</a>  </li>  
	<li><img class="images"  src="images/mark.png" >  <a href="#">정보 수정</a>  </li>  
</ul>  

  
  

</div>



<div id="section" >
	<p style="font-size:40px;font-weight:bold;margin-top: 60px;margin-left: 50px;letter-spacing:3px;">1:1 문의</p>

<table id="article_table"  >
<thead>
 <tr>
   <th class="number">No</th>
   <th class="voucher"  style="width: 320px;">제목</th>
   <th class="buy_Date" style="width: 180px;">작성일</th>
   <th class="use_Date" style="width: 180px;">답변상태</th>
 </tr>
</thead>
</table><br/>

<div style="margin:0px auto; width:600px">
	<img src="images/no_inquiry.png" style="float:middle; width=200px; margin-left: 200px"/>
	<p style="margin-left: 200px">문의하신 내역이 없습니다.</p>
</div>
<br/>
<div style="float: right; padding-right: 100px;">
	<img src="images/inquiry_write.png" width="200px"; onclick="document.getElementById('frm').submit()"/>
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
</form>
</body>
</html> 