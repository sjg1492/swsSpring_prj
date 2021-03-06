<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
#a_tag a{color:black}
</style>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/html_prj/common/css/main.css"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<style type="text/css">
/* 전체 틀 */
#wrap{margin: 0px auto;width:1400px;height:900px;}
/* 가운데 구역(왼쪽,오른쪽) */
#contents{width: 1400px;height: 900px;}
/* 왼쪽 메뉴바 */
#aside{width:297px; height:1000px; float: left; border-right: 3px solid #333;padding-left: 70px;}
/* 오른쪽 구역 */
#section{width:1100px; height:500px; float:left;}

/* 테이블 */
#article_table{width: 900px;height:300px; margin-left: 100px;margin-top: 60px;
    border-top:2px solid #5b7ce5; text-align: center;}
#number{width: 50px;}
#title{width: 400px;}
#writer{width: 50px;}
#input_date{width:150px;}

/* 페이지번호 */
#article_number{text-align: center;margin-top: 60px;}

a{color: black;}
th{text-align:center; border-bottom: solid #5b7ce5;}

/* footer 시작 */
#footer{width:1400px; height:200px; bottom:0;}
/* footer 끝 */
</style>
</head>

<body >
<div class="super_container">
	<!-- Header -->
	<jsp:include page="header/header.jsp"></jsp:include>
</div>
<div id="wrap">
 <!-- wrap 1400(w)x1000(h) -->

<div id="contents">

<div id="section" style="margin-left:100px" >
 <p style="font-size:40px;font-weight:bold;margin-top:200px; color:black; margin-left: 50px;letter-spacing:3px;">공지사항</p>

<table id="article_table"  >
<thead>
 <tr>
   <th id="number">번호</th>
   <th id="title">제목</th>
   <th id="wirter">작성자</th>
   <th id="input_date">게시일</th>
 </tr>
</thead>

<tbody>
 <c:forEach var="notice" items="${notice_list }">
			<c:set var="i" value="${i+1 }"/>
			<tr>
				<td><c:out value="${i }"/></td>
				<td><a href="notice.do?title=${notice.title }"><c:out value="${notice.title }"/></a></td>
				<td><c:out value="${notice.id }"/></td>
				<td><c:out value="${notice.input_date }"/></td>
			</tr>
</c:forEach>
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
