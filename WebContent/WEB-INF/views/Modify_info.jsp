<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>정보수정</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/final_prj/common/css/main.css"/>
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
<style type="text/css">

/* 전체 틀 */
#wrap{margin: 0px auto;width:1400px;height:1100px; 
		font-family: Malgun Gothic; padding-top: 100px;}
/* 가운데 구역(왼쪽,오른쪽) */
#contents{width: 1400px;height: 1000px;}

/* 오른쪽 구역 */
#section{width:1100px; height:1000px; float:left;}
table{margin: 0px auto;border: 1px solid #333;width:1000px;}

/* 테이블 */
td,body,input,select,textarea{font-size:13px;line-height:1.5;
font-family:맑은 고딕,sans-serif;color:#333;}
.inputBox{border:1px solid #ededed; background-color:#ffffff;height:30px; }
.red{color:#ff0000;}


/* 버튼 */
#btn_wrap{text-align: center;padding-top: 20px;}
.btn{width:80px ;font-size: 16px;border: 1px solid #C8CDCD; margin: 2px; }

tr{padding-left: 10px;letter-spacing:1px;}
th{height:50px; text-align: center;
background-color: #fdfdfd;color:#545454;font-size: 18px;font-weight: bold;}
td{height:40px; text-align: left;font-size: 14px;letter-spacing:1px;width:100px;padding-left: 25px;}
input:hover{background-color: #eae9f7;}
p,a{color: black;}
label{font-size: 15px;}

</style>


</head>

<body >

<div class="super_container">

	<!-- Header -->
	
	<header class="header">
		<div class="header_inner d-flex flex-row align-items-center justify-content-start">
			<div class="logo"><img style="width:190px;" src="images/BILRIM.jpg" ></div>
			<nav class="main_nav">
				<ul>
					<li><a href="categories.html">가방</a></li>
					<li><a href="#">시계/악세사리</a></li>
					<li><a href="#">지갑</a></li>
					<li><a href="#">이용권</a></li>
					<li><a href="#">BILRIM</a></li>
					<li><a href="#">고객센터</a></li>
				</ul>
			</nav>
			<div class="header_content ml-auto">
				<div class="search header_search" style="top:-30px ">
					<form action="#">
						<input type="search" class="search_input" required="required">
						<button type="submit" id="search_button" class="search_button"><img src="images/magnifying-glass.svg" alt=""></button>
					</form>
				</div><!--search header_search  -->
				
				<div class="loginSignup" style="width:300px; height:50px; left:150px; position: absolute; top:-15px">
					<!-- 로그인 -->
					<div>
						<a href="#">
							<img style="margin-top: 8px" src="images/login.png" alt="이미지를 불러오지 못하였습니다">
							</a>
							<!-- 회원가입 -->
						<a href="#">
							<img src="images/signUp.png" alt="이미지를 불러오지 못하였습니다">
						</a>
					</div>
				</div><!--shopping  -->
			</div><!--header_content ml-auto  -->
		</div>
	</header>
	
</div><!--super_container  -->


<div id="wrap">
	<!-- wrap 1400(w)x1000(h) -->

<div id="contents">

<div id="aside">
	<p style="font-size: 35px;margin-top: 80px; padding-left: 60px;font-weight: bold;">나의 정보</p>

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
	<p style="font-size:40px;font-weight:bold;margin-top: 60px;margin-left: 50px;letter-spacing:3px;">정보 수정</p>


<div style="padding-top: 30px;">

<table>
		<tr>
			<td colspan="2" style="text-align:right; padding-right: 20px">
			<span class="red" >*은 필수입력입니다.</span>
			</td>
		</tr>
		<tr>
			<td><label>이름</label></td>
			<td>
			<input type="text" class="inputBox" name="name" size="15" 
					maxlength="10" style="width:220px">  
			</td>
		</tr>
		<tr>
			<td><label><span class="red">*</span>현재 비밀번호</label></td>
			<td>
			<input type="password" class="inputBox" name="pass" style="width:220px" 
			maxlength="15"> 
			</td>
		</tr>
		<tr>
			<td><label><span class="red">*</span>새 비밀번호</label></td>
			<td>
			<input type="password" class="inputBox" name="new_pass" style="width:220px"
				maxlength="15"> 
				<label style="font-size: 12px">비밀번호는 숫자,영어 대/소문자,특수문자 포함 10자 이상으로 입력하시오.</label>
			</td>
		
		</tr>
		<tr>
			<td><label><span class="red">*</span>새 비밀번호 확인</label></td>
			<td>
			<input type="password" class="inputBox" name="new_pass_confirm" style="width:220px" maxlength="15"> 
			</td>
		</tr>
		<tr>
			<td><label>비밀번호 확인 질문</label></td>
			<td>
				<select name="question" class="inputBox" style="width:220px;">
				<option value="1" >제일 좋아하는 친구는?</option>
				<option value="2" >가장 기억에 남는 장소는?</option>
				<option value="3" >졸업한 초등학교 이름은?</option>
				<option value="3" >나의 보물 1호는?</option>
				<option value="4" >중학교 담임선생님 성함은?</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><label>비밀번호 확인 답변</label></td>
			<td>
			<input type="text" class="inputBox" name="answer" size="30" style="width:220px" >
			</td>
		</tr>

		<tr>
			<td><label>연락처</label></td>
			<td>
				<select name="mobile1" class="inputBox">
				<option value="010" >010</option>
				<option value="011" >011</option>
				<option value="018" >018</option>
				<option value="019" >019</option>
				</select>
					<label>-</label>
				<input type="text" class="inputBox" style="width:50px; " name="mobile2"  maxlength="4"/>
				<label>-</label>
				<input type="text" class="inputBox" style="width:50px" name="mobile3" maxlength="4"/>
			</td>
		</tr>
		
		<tr>
			<td><label>이메일</label></td>
			<td>
			<input type="email" class="inputBox" name="email" style="width:300px" >
			</td>
		</tr>
		<tr>
		<td><label><span class="red">*</span> 우편번호</label></td>
		<td>
			<input type="text" class="inputBox" style="width:50px" readonly="readonly" name="zipcode" />
			<input type="button" value="우편번호검색" id="btn_zipcode" class="zipcode" style="width:100px"/><br/>
		</td>
		</tr>
		<tr>
			<td><label><span class="red">*</span> 주소</label></td>
			<td>
			<input type="text" class="inputBox" name="addr1" style="width:300px" readonly="readonly"> 
			</td>
		</tr>
		<tr>
			<td><label>  상세주소</label></td>
			<td>
			<input type="text" class="inputBox" name="addr2" style="width:300px"> 
			</td>
		</tr>


		</table>
</div>
<br/>



<div id="btn_wrap" style="padding-right: 100px;">
 <input type="button" value="취소" class="btn" id="btn_cancle" name="btn_cancle" />
 <input type="button" value="수정" class="btn" id="btn_adj" name="btn_adj"/>
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