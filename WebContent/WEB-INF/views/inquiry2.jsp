<%@page import="kr.co.sist.user.vo.InquiryVO"%>
<%@page import="kr.co.sist.user.dao.InquiryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link rel="stylesheet" type="text/css" href="styles/s_style/submenu.css">
<script type="text/javascript">
$(function() {
	$("#registration").click(function() {
		$("#logout_btn").click(function(){
				if(window.confirm("로그아웃 하시겠습니까?")){
					location.href="logout.do";
				}
			});

		//공백 막기
		var title_ck =$.trim($("#title").val());
		var content_ck =$.trim($("#content").val());

		if(title_ck.length==0){
			$("[name='title']").focus();
			alert("제목을 입력해주세요!");
			return;
		}
		if(content_ck.length==0){
			$("[name='content']").focus();
			alert("문의 내역을 입력해주세요!");
			return;
		}

		$("#frm").submit();
	});
});//ready
</script>
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

/* 문의 등록 버튼 */
#registration, #cancel{width:80px; height:30px; background-color:black; color:white}

th{border-bottom:1px solid #e7e7e7; height:50px; text-align: center;
background-color: #fdfdfd;color:#545454;font-size: 15px;font-weight: bold;}
td{border-bottom: 1px solid #e7e7e7;height:35px; text-align: center;}
tr:hover{background-color: #eae9f7;}
</style>

</head>

<body>
<div class="super_container">
	<!-- Header -->
	<jsp:include page="header/header.jsp"></jsp:include>
</div>
<div id="wrap" style="margin-top:100px">
 <!-- wrap 1400(w)x1000(h) -->
<div id="aside">
	<p style="font-size: 35px;margin-top: 80px; padding-left: 60px;font-weight: bold; color:black">고객 센터</p>

<div id="line" >

</div>	  

<ul id="submenu" >  
		<li><img class="images" src="images/mark.png"  >  <a href="ticket_history.do">이용권 내역</a>  </li>  
	<li><img class="images" src="images/mark.png"  >  <a href="rental_detail.do">빌림 내역</a>  </li>  
	<li><img class="images"  src="images/mark.png"  >  <a href="inquiry1.do">문의 내역</a>  </li>  
	<li><img class="images"  src="images/mark.png" >  <a href="Modify_password.do">정보 수정</a>  </li>  
</ul>  
</div>

<form name="frm" id="frm" name="inquiry" action="inquiry4.do" method="post">
<div id="frame" style="width:800px; margin-left:50px">
	<p style="font-size:35px; font-weight: bold; margin-top: 60px;margin-left: 50px;letter-spacing:3px; color:black">1:1 문의</p>
	<br/>
	<div style="text-align: right; margin-right:25px">
		<strong>*표시는 필수 항목입니다.</strong>
	</div><br/>
	
	<div>
		*제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="text" id="title" name="title" style="height:20px; width:700px; border:1px solid #333"/>
	</div><br/>
	<div>
		*유형&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<select name="i_type">
		 <option value="배송">배송</option>
		 <option value="주문">주문</option>
		 <option value="결제">결제</option>
		</select>
	</div><br/>
	
	<div>
		*문의 내역&nbsp;&nbsp;<input type="text" id="content" name="content" style="height:150px; width:700px; border:1px solid #333"/>
	</div><br/>
	
	<div style="float:right; margin-right:25px">
		<input type="button" name="regist" id="registration" value="등록"/>&nbsp;
		<input type="button" id="cancel" value="취소"/>
	</div>
</div>
</form>
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