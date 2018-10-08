<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>회사소개</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/prj_final/common/css/main.css"/>
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
<script type="text/javascript">

</script>
<style type="text/css">
/* 전체 틀 */
#wrap{margin: 0px auto;width:1400px;height:1600px;font-family: Malgun Gothic;}

/* section1,2,3 */
#contents{width: 1400px;}
/* 회사소개 */
#section1{width:1400px ;height:400px;margin-top: 100px; }
 
/*  */
#intro1{font-size: 30px;font-weight:900; color: black; padding-left: 25px;text-decoration:underline;}
.intro2{font-size: 35px;padding-left: 30px;color: black;}
.intro3{font-size: 23px;padding-left: 40px;color: ;font-weight: 550;}

/* 회사위치 */
#section2{width:1400px ;height:320px;background-color:#F0F0EB;}

#l_location{width:500px;height:320px; float: left;margin-left: 100px;} 
#r_location{width:550px;height:320px;float: right;
margin-right: 100px; font-size: 20px;vertical-align:bottom;}

p{font-size: 30px;letter-spacing:1px;}


/* footer 시작 */
#footer{width:1400px; height:200px;background-color: red; bottom:0;}
/* footer 끝 */



</style>
</head>
<body>

<div class="super_container">

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
	
</div><!-- super_container -->


<div id="wrap">
	<!-- wrap 1400(w)x1000(h) -->

<div id="contents">
	<div id="section1"><img alt="이미지를 불러오지 못했습니다." src="images/intro.jpg" style="width:1400px;height: 400px" /></div>	
	
	
	
	<div style="padding-top: 55px;">
	<p id="intro1">서비스 소개</p>
	</div>
	
	<div style="padding-top: 20px;">
	<p class="intro2">BILRIM | 믿을 수 있는 품질, 트렌디한 상품</p>
	<p class="intro3">해외 현지 리셀러를 통해 믿을 수 있는 진품만 구매하고<br/>
	깐깐한 아틀리에 감정을 거친 후에야 빌림 이름으로 판매합니다.<br/>
	빌림만의 발빠른 프로세스를 통해 믿을 수 있는 품질의 트렌디한 상품을 만나실 수 있습니다.</p>
	</div>
	
	<div style="padding-top: 15px">
	<p class="intro2" >RENTAL | 다양한 명품, 저렴한 가격</p>
	<p class="intro3">파리, 뉴욕 등 세계 곳곳의 멀티 브랜드샵 상품과 국내 유명 부티크 및<br/>
	병행 수입업체 상품이 빌림을 통해 렌탈됩니다.<br/>
	다양한 종류의 명품을 저렴하게 대여하실 수 있습니다.</p>
	</div>
	
	<p style="padding-top: 100px;color: black; 
	font-weight: 900;padding-left: 25px;text-decoration:underline;">오시는 길</p><br/>
	<div id="section2">

		<div id="l_location"><img alt="이미지를 불러오지 못했습니다." src="images/location.PNG" style="width:500px;height:320px" /> </div>
		
		<div id="r_location">서울특별시 강남구 테헤란로 132(역삼동) 한독약품빌딩 8층<br/>역삼역 3번출구 도보 5분
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
	



</body>
</html>