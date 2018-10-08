<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>1:1문의</title>
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
<link rel="stylesheet" type="text/css" href="http://localhost:8080/html_prj/common/css/main.css"/>
<style type="text/css">
#wrap{margin: 0px auto; width:1400px; height:800px; font-family: Malgun Gothic;}

#menubar{width:200px; height:800px; float: left; border-right: 3px solid #333;}
/* container 시작 */
#frame{width:1100px; height:800px; float:left; margin-left: 20px}
#menubar{padding-left: 50px; width:300px}
/* container 끝 */

.tab{border-top:2px solid #5b7ce5; text-align: center;}
.number{width: 80px;}
.voucher{width: 120px;}
.buy_Date{width: 120px;}
.use_Date{width: 120px;}
.times{width: 120px;}
.submenu{font-size: 25px;letter-spacing:2px;}

th{border-bottom:1px solid #e7e7e7; height:50px; text-align: center;
background-color: #fdfdfd;color:#545454;font-size: 15px;font-weight: bold;}
td{border-bottom: 1px solid #e7e7e7;height:35px; text-align: center;}
tr:hover{background-color: #eae9f7;}
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
<div id="menubar">
<p style="text-decoration: underline; font-size: 35px;margin-top: 80px;">고객센터</p>
<ul class="top_bar">   
<li>
<a href="#"> </a>  
<ul class="submenu" style="position: absolute ;">  
<li style="margin-top: 10px;">  <a href="#">렌트 내역</a>  </li>  
<li style="margin-top: 10px;">  <a href="#">적립금 내역</a>  </li>  
<li style="margin-top: 10px;">  <a href="#">문의 내역</a>  </li>  
<li style="margin-top: 10px;">  <a href="#">정보 수정</a>  </li>  
</ul>  
</li>  
</ul>  

</div>

<div id="frame" style="width:800px">
	<p style="font-size: 35px;font-weight: bold; margin-top: 60px;margin-left: 50px;letter-spacing:3px;">1:1 문의</p>
	<div style="text-align: right">
		<strong>*표시는 필수 항목입니다.</strong>
	</div><br/>
	
	<div>
		*제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" style="height:20px; width:700px"/>
	</div><br/>
	
	<div>
		*문의 내역&nbsp;&nbsp;<input type="text" style="height:150px; width:700px"/>
	</div><br/>
	
	<div>
		파일 선택&nbsp;&nbsp;&nbsp;<img src="images/add_image.png" style="width:100px"><input type="file"/>
	</div><br/>
	
	<div style="float:right;">
		<input type="checkbox"/>비밀글&nbsp;<input type="button" value="등록" style="width:60px; height:30px"/>&nbsp;<input type="button" value="취소" style="width:60px; height:30px"/>
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