<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>빌림내역</title>
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
<link rel="stylesheet" type="text/css" href="styles/s_style/submenu.css">
<script type="text/javascript">
$(function(){

	$("#logout_btn").click(function(){
		if(window.confirm("로그아웃 하시겠습니까?")){
			location.href="logout.do";
		}
	});
	
	
});
</script>
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
#product{width: 120px;}
#start_time{width: 120px;}
#end_time{width: 120px;}

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

<body >

<div class="super_container">

		<!-- Header -->
	<jsp:include page="../header/header.jsp"></jsp:include>
	<!-- Header -->
	
</div><!-- super_container -->


<div id="wrap">
	<!-- wrap 1400(w)x1000(h) -->

<div id="contents">
<div id="aside">
	<p style="font-size: 35px;margin-top: 80px; padding-left: 60px;font-weight: bold;">나의 정보</p>

<div id="line" >

</div>	  

<ul id="submenu" >  
	<li><img class="images" src="images/mark.png"  >  <a href="ticket_history.do">이용권 내역</a>  </li>  
	<li><img class="images" src="images/mark.png"  >  <a href="rent_detail.do">빌림 내역</a>  </li>  
	<li><img class="images"  src="images/mark.png"  >  <a href="inquiry1.do">문의 내역</a>  </li>  
	<li><img class="images"  src="images/mark.png" >  <a href="#">정보 수정</a>  </li>  
</ul>  

  
  

</div>



<div id="section" >
	<p style="font-size:40px;font-weight:bold;margin-top: 60px;margin-left: 50px;letter-spacing:3px;">대여 내역</p>

<table id="article_table"  >
<thead>
	<tr>
			<th id="number">번호</th>
			<th id="product">상품</th>
			<th id="start_time">대여일</th>
			<th id="end_time">반납일</th>
	</tr>
</thead>

<tbody>
	<tr>
			<td>1</td>
			<td>구찌</td>
			<td>2018/08/31</td>
			<td>2018/09/30</td>
	</tr>


</tbody>
</table>

<!-- 페이지번호 -->
<div id="article_number">

	<nav>
	  <ul class="pagination">
	    <li><a href="#"><span aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
	    <li><a href="#">1</a></li>
	    <li><a href="#"><span aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
	  </ul>
	</nav>

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
	

</head>
<body>



</body>
</html>