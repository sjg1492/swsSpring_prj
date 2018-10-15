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
function findIdPw() {
	window.open("idpw_find.do","ow1","width=800,height=400,top="+(screen.availHeight/2-100)+",left="+(screen.availWidth/2-100)+"");
}


 $(function() {
		$("#signup").click(function() {
			location.href="signUpTerms.do";
		});
		$("#login_btn").click(function() {
			var id=$("#id").val();
			var pass=$("#pass").val();	
				
			var form_data = {
			        id: id,
			        pass: pass
			 };
			
			if(id=="" || pass==""){
				alert("아이디 또는 비밀번호가 입력되지 않았습니다.")
				$("#id").focus()
				return false;
			}
			$.ajax({
				type : 'POST',
				data : form_data,
				url : 'loginCheck.do',
				dataType : 'json',
				success : function(data) {
					if (data.loginResult == "1") {
						alert(id+"님 환영합니다")
						$("#lFrm").submit()
					} else {
						alert("아이디 또는 비밀번호가 올바르지 않습니다.")
						
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
	
	<jsp:include page="header/header.jsp"></jsp:include>

	<div style="height:1000px; top:150px">
	
	<form id="lFrm" method="post" name="lFrm" action="index.do"  >
		<div style="margin: 0px auto;width: 450px; height: 600px; border: 1px solid #d7d5d5;  top:30px; " >
			<div style="top:55px; width: 100px; height: 70px; margin:0px auto; font-size: 30px">
			<img style="width:190px; position:relative;left: -50px" src="images/BILRIM.jpg" >
		</div>
		<div style="margin: 0px auto; width: 300px; height: 70px; top:60px; left:70px; font-size: 23px; font-family: 고딕; font-weight: bold;" >사용자 로그인</div>
		<div style="top:80px; width: 350px; height: 90px;  margin:0px auto;">
			<input type="text" value="아이디를 입력해주세요" id="id" style="width: 100%;height: 50%" >
		</div>
		<div style=" top:50px; width: 350px; height: 90px;  margin:0px auto;">
			<input type="password" id="pass" value="비밀번호" style="width: 100%;height: 50%" >
		</div>
		<div style=" top:25px; width: 350px; height: 50px;  margin:0px auto;">
				<a href="#" style="font-size: 11px; float: right; color: #A5A5A5" onclick="findIdPw(); return false">아이디/비밀번호를 잊으셨습니까?</a>
		</div>
		<div style=" top:20px; width: 350px; height: 50px;  margin:0px auto;">
			<input type="button" id="login_btn" value="로그인" style="width: 100%;height: 100%;" >
		</div>
		<div style=" top:25px; width: 350px; height: 50px;  margin:0px auto;">
			<input type="button" value="회원가입" style="width: 100%;height: 100%;"id="signup">
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