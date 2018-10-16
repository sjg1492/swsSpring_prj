<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정-비밀번호 재확인</title>
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
<style type="text/css">

/* 전체 틀 */
#wrap{margin: 0px auto;width:1400px;height:1100px; 
		font-family: Malgun Gothic; padding-top: 100px;}

/* 가운데 구역(왼쪽,오른쪽) */
#contents{width: 1400px;height: 1000px;}


/* 오른쪽 구역 */
#section{width:1100px; height:1000px; float:left;}

#notice{padding-top: 30px;padding-left: 15px;}

/* 테이블 */
#article_table{width: 900px;height:300px; margin-left: 100px;margin-top: 60px;
				border-top:2px solid #094d8b;text-align: center; }
#number{width: 50px;}
#voucher{width: 120px;}
#buy_Date{width: 120px;}
#use_Date{width: 120px;}
#times{width: 120px;}

/* 버튼 */
#btn_wrap{text-align: center;padding-top: 20px;}
.btn{font-size: 17px;border: 1px solid #C8CDCD;margin: 2px;}

table{width: 800px; height:160px; border:none;margin-left: 150px;
			margin-top: 20px;background-color: #EBEBF0;}
label{font-weight: bold; font-size: 17px;}
p,a{color: black;}
</style>
<script type="text/javascript">
$(function() {
	
	$("#logout_btn").click(function(){
		if(window.confirm("로그아웃 하시겠습니까?")){
			location.href="logout.do";
		}
	});
	
	
	$("#btn_ok").click(function() {
		var id='${id}';
		var pass=$("#pass").val();	
			
		var form_data = {
		        id: id,
		        pass: pass
		 };
		
		$.ajax({
				type : 'POST',
				data : form_data,
				url : 'userinfo.do',
				dataType : 'json',
				success : function(data) {
					if (data.result != null) {
						$("#mFrm").submit()
					} else {
						alert("비밀번호가 틀렸습니다. 다시 입력해주세요")
					}
				}

		});//ajax
	});//click
	
});//function 

</script>

</head>

<body >

<div class="super_container">

	<!-- Header -->
	
	<jsp:include page="header/header.jsp"></jsp:include>
	
</div><!-- super_container -->


<div id="wrap">
	<!-- wrap 1400(w)x1000(h) -->
<form id="mFrm" method="post" action="Modify_info.do">
<div id="contents">
<div id="aside">
	<p style="font-size: 35px;margin-top: 80px; padding-left: 60px;font-weight: bold;">나의 정보</p>

<div id="line">
</div>
<ul id="submenu" >  
		<li><img class="images" src="images/mark.png"  >  <a href="ticket_history.do">이용권 내역</a>  </li>  
	<li><img class="images" src="images/mark.png"  >  <a href="rental_detail.do">빌림 내역</a>  </li>  
	<li><img class="images"  src="images/mark.png"  >  <a href="inquiry1.do">문의 내역</a>  </li>  
	<li><img class="images"  src="images/mark.png" >  <a href="Modify_password.do">정보 수정</a>  </li> 
</ul>   

</div>



<div id="section" >

<ul id="notice">
<li>빌림은 회원님의 개이정보를 신중히 취급하며, 회원님의 동의 없이는 기재하신 회원정보가 공개되지 않습니다.<br/>
보다 다양한 서비스를 받으시려면 정확한 정보를 항상 유지해 주셔야 합니다.</li>
</ul>


<p style="font-weight: bold;font-size: 25px;margin-top: 20px;margin-left: 150px">비밀번호 재확인</p>

<div>


<table >	
	<tr >
			<td><label>아이디</label></td>
			<td>
			<label>${sessionScope.id}</label>
			</td>
	</tr>
	<tr>
			<td><label>비밀번호</label></td>
			<td>
			<input type="password" class="inputBox" id="pass" style="width:200px; height: 25px"
				maxlength="10"> 
			</td>
			<td style="color: #C96505">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인 합니다.</td>
	</tr>
</table>	
</div>
<!-- 버튼 -->
<div id="btn_wrap" >
 <input type="button" value="확인" class="btn" id="btn_ok"  />
 <input type="button" value="취소" class="btn" id="btn_cancle"  />
</div>


</div>

</div>
</form>
</div>

<footer>
	<div>
	<div class="footerLogo">
		<img style="width:220px;" src="http://211.63.89.142:11095/swsSpring_prj/images/bilrimMent.png" >
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