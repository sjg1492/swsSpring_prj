<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Wish</title>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="js/custom.js"></script>
<script type="text/javascript">

/* $(document).ready(function(){
	var id=$("#id").val()
	var pass=$("#pass").val()	
	if(id=="" || pass==""){
		alert("아이디 또는 비밀번호가 입력되지 않았습니다.")
		$("#id").focus()
		return;
	}
	
	
	$("#login_btn").click(function() {
		var form_data = {
			     id: $('#id').val(),
		       pass: $('#pass').val()
	   };
		$.ajax({
			async : true,
			type : 'POST',
			data : form_data,
			url : 'loginCheck.do',
			dataType : 'json',
			success : function(data) {
				if (data.loginResult > 0) {
					alert("로그인 성공")
				} else {
					alert("로그인 실패")
				}
			}

		});//ajax
	});//click
	  // 폼 내부의 데이터를 전송할 주소
    document.lFrm.action="${path}/swsSpring_prj/loginCheck.do" // git 내려받기 후 에러 날때 메이븐 전체 삭제 후 다시 받고 여기 위치 수정
    // 제출
    document.lFrm.submit();		
});//function  */ 
	/* function checkIt() {
	var id=$("#id").val()
	var pass=$("#pass").val()
	var form_data = {
		        id: $('#id').val(),
		        pass: $('#pass').val()
		   };
	if(id=="" || pass==""){
		alert("아이디 또는 비밀번호가 입력되지 않았습니다.")
		$("#id").focus()
		return false;
	}
	$.ajax({
		async : true,
		type : 'POST',
		data : form_data,
		url : 'loginCheck.do',
		dataType : 'json',
		success : function(data) {
			if (data.loginResult > 0) {
				alert("로그인 성공")
			} else {
				alert("로그인 실패")
			}
		},
		error : function(error){
			alert("error : "+error);
		}

	});//ajax	

	
}  */
	
	
	
  $(function() {
	var id=$("#id").val()
	var pass=$("#pass").val()	
	
		$("#login_btn").click(function() {
			var form_data = {
			        id: $('#id').val(),
			        pass: $('#pass').val()
			   };
			$.ajax({
				async : true,
				type : 'POST',
				data : form_data,
				url : 'loginCheck.do',
				dataType : 'json',
				success : function(data) {
					if (data.loginResult > 0) {
						alert("로그인 성공")
					} else {
						alert("로그인 실패")
					}
				}

			});//ajax
		});//click
			
	});//function
</script>


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
</head>
<body>

<div class="super_container" style="width:1819px;height:900px">

	<!-- Header -->
	
	<header class="header">
		<div class="header_inner d-flex flex-row align-items-center justify-content-start">
		<a href="#">
			<div class="logo"><img style="width:190px;" src="images/BILRIM.jpg" ></div>
		</a>
			<nav class="main_nav">
				<ul>
					<li><a href="categories.do">가방</a></li>
					<li><a href="categories.do">시계/악세사리</a></li>
					<li><a href="categories.do">지갑</a></li>
					<li><a href="Ticket.do">이용권</a></li>
					<li><a href="Company_info.do">BILRIM</a></li>
					<li><a href="customer_main.do">고객센터</a></li>
				</ul>
			</nav>
			
			<div class="header_content ml-auto">
				
				<div class="loginSignup" style="width:300px; height:50px;">
					<!-- 로그인 -->
					<div>
						<a href="login.do">
							<img style="margin-top: 8px" src="images/login.png" alt="이미지를 불러오지 못하였습니다">
							</a>
							<!-- 회원가입 -->
						<a href="signUpTerms.do">
							<img src="images/signUp.png" alt="이미지를 불러오지 못하였습니다">
						</a>
					</div>
				</div><!--shopping  -->
			</div><!--header_content ml-auto  -->
		</div>
	</header>


	<div style="height:1000px; top:150px">
	
	<form id="lFrm" method="post" name="lFrm" >
	<div style="margin: 0px auto;width: 450px; height: 600px; border: 1px solid #d7d5d5;  top:30px; " >
		<div style="top:55px; width: 100px; height: 70px; margin:0px auto; font-size: 30px">
		<img style="width:190px; position:relative;left: -50px" src="images/BILRIM.jpg" >
		</div>
		<div style="margin: 0px auto; width: 300px; height: 70px; top:60px; left:70px; font-size: 23px; font-family: 고딕; font-weight: bold;" >사용자 로그인</div>
		<div style="top:80px; width: 350px; height: 90px;  margin:0px auto;">
			<input type="text" value="아이디" id="id" style="width: 100%;height: 50%" >
		</div>
		<div style=" top:50px; width: 350px; height: 90px;  margin:0px auto;">
			<input type="password" id="pass" value="비밀번호" style="width: 100%;height: 50%" >
		</div>
		<div style=" top:25px; width: 350px; height: 50px;  margin:0px auto;">
				<input type="checkbox" name="keep_id" />&nbsp; 아이디 저장
				<a href="#" style="font-size: 7px; float: right; color: #C0C0C0">아이디/비밀번호를 잊으셨습니까?</a>
		</div>
		<div style=" top:20px; width: 350px; height: 50px;  margin:0px auto;">
			<input type="button" id="login_btn" value="로그인" style="width: 100%;height: 100%" >
		</div>
		<div style=" top:25px; width: 350px; height: 50px;  margin:0px auto;">
			<input type="button" value="회원가입" style="width: 100%;height: 100%;">
		</div>
	
	</div><!--로그인 테두리-->
	</form>
	</div>
</div><!--super_container  -->
<div class="footers">
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
</div>
</body>
</html>