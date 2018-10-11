<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Wish</title>
<style type="text/css">
tr{
height:40px;
}
td{
	margin-left: 100px;
}
</style>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="js/custom.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
//아이디 체크여부 확인 ( 아이디 중복일경우 = 0 , 중복이 아닐경우 = 1)
var idck=0;

$(function(){
	var idck = 0;// 중복확인 여부 판단 0 일경우 회원가입 불가
	//중복체크 클릭
	$("#doubleCheck").click(function(){
		var id=$("#id").val();
		
		$.ajax({
			async : true,
			type : 'POST',
			data : "id="+id,
			url : "idcheck.do",
			dataType : "json",
			
			success : function(data){
				if(data.cnt=="1"){
					alert("아이디가 존재합니다, 다른아이디를 입력해주세요.")
				}else{
					alert("사용가능한 아이디입니다.")
					//아이디가 중복하지 않을경우
					idck=1;
				}
			},
			error : function(error){
				alert("아이디가 존재합니다, 다른아이디를 입력해주세요.")
			}
			
		});
	});
	
	/*다음 api 주소   */
	$("#btnAddr").click(function(){
		new daum.Postcode({
			oncomplete: function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var fullAddr = ''; // 최종 주소 변수
				var extraAddr = ''; // 조합형 주소 변수

				// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					fullAddr = data.roadAddress;

				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					fullAddr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
				if(data.userSelectedType === 'R'){
					//법정동명이 있을 경우 추가한다.
					if(data.bname !== ''){
						extraAddr += data.bname;
					}
					// 건물명이 있을 경우 추가한다.
					if(data.buildingName !== ''){
						extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
					}
					// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
					fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('zip').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('addr').value = fullAddr;

				// 커서를 상세주소 필드로 이동한다.
				document.getElementById('addr_detail').focus();
			}
		}).open();
	});
	
	
	$("#signUpCancel").click(function(){
		if(window.confirm("초기화면으로 이동합니다  정말 취소하시겠습니까?")){
			location.href="index.do";
		}
	});
	$("#signUpBtn").click(function(){
		var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	    var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
	    var getName= RegExp(/^[가-힣]+$/);
		
		var id=$("#id").val(); // 아이디
		var pass=$("#pass").val();//비밀번호
		var confirm_pass=$("#confirm_pass").val();//비밀번호확인
		var name=$("#name").val(); //성별
		
		var pw_hint=$("#pw_hint").val(); //비밀번호 힌트 (option의 벨류값이 담김)
		var pw_answer=$("#pw_answer").val(); //비밀번호 힌트 답변
		var phone=$("#phone1").val()+$("#phone2").val()+$("#phone3").val();
		//var id=$("#id").val() // 전화번호 들어갈자리 셀렉트라서 확인필요 또한 phone 1,2,3 모두 더해서 phone 하나로
		var zip=$("#zip").val(); //우편번호
		var addr=$("#addr").val(); //주소
		var addr_detail=$("#addr_detail").val(); //상세주소
		var email=$("#email").val(); //이메일
		var gender_check=$('input:radio[name=gender]').is(':checked'); //성별 미체크시 false
		var gender=$("#gender").val();
	
		//성별체크
		if (!gender_check) {
			 alert("성별을 체크해주세요.");
		        return;
		}//end if
		
		 //아이디 공백 확인,아이디의 유효성 검사
		 if(id==""){
			alert("아이디 입력해주세요.");
			return;
	   	 	if(!getCheck.test(id)){
	      		alert("아이디를 형식에 맞게 입력해주세요");
	      		$("#id").val("");
	      		$("#id").focus();
	      		return;
	    	}//end if
		}//end if
		
	    //비밀번호
	    if(pass==""){
	    	alert("비밀번호를 입력해주세요.");
	    	return;
		    if(!getCheck.test(pass)) {
			    alert("형식에 맞춰서 비밀번호를 입력해주세요.");
			    $("#pass").val("");
			    $("#pass").focus();
			    return;
		    }//end if
	    }//end if
	
	    //아이디랑 비밀번호랑 같은지
	    if (id==pass) {
		    alert("아이디와 비밀번호는 다르게 입력해주세요.");
		    $("#pass").val("");
		    $("#pass").focus();
		    	return;
	  	}//end if
	
	    //비밀번호 똑같은지
	    if(pass != confirm_pass){ 
		    alert("비밀번호가 일치하지 않습니다 다시 입력해주세요.");
		    $("#pass").val("");
		    $("#confirm_pass").val("");
		    $("#pass").focus();
		    return;
	    }//end if
	
	   //이메일 공백 확인
	    if(email == ""){
	      alert("이메일을 입력해주세요");
	      $("#email").focus();
	      return;
	    }//end if
	         
	    //이메일 유효성 검사
	    if(!getMail.test(email)){
	      alert("이메일형식에 맞게 입력해주세요")
	      $("#email").val("");
	      $("#email").focus();
	      return ;
	    }//end if
	
	    //이름 유효성
	    if (!getName.test(name)) {
	      alert("이름을 형식에 맞게 입력해주세요.");
	      $("#name").val("");
	      $("#name").focus();
	      return;
	    }//end if
			
	    if(idck != 0){
			if(window.confirm("회원가입을 하시겠습니까?")){//예를 누를경우 true		
				var form_data = {
					        id: id,
					        pass: pass,
					        name: name,
					        pw_hint: pw_hint,
					        pw_answer: pw_answer,
					        phone:  phone,
					        zip: zip,
					        addr: addr,
					        addr_detail: addr_detail,
					        email: email,
					        gender: gender
					 };
			
				$.ajax({
					type : 'get',
					data : form_data,
					url : 'signUpInsert.do',
					dataType : 'json',
					success : function(data) {
							if(data.result >0){	
								alert("회원가입에 성공하셨습니다.")
								$("#sFrm").submit()
							}//end if
					}
				});//ajax 
			}//end if
	    }else{
	    	alert("아이디 중복체크를 해주세요")
	    	return;
	    }
		
		
	});//로그인 버튼
	
});

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

<div class="super_container">

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
	
	<form id="sFrm" method="get" action="login.do" >
		<div style="margin: 0px auto;  top:130px; border: 1px solid #d7d5d5; left: 70px"></div>
		<div style="margin-left:100px; margin-top:200px; height:800px "><!--signUp  -->
		<div id="wrap">
		<div id="header"  style="font-size:28px; font-style:고딕; font-weight: bold; color:#373634 ">
			회원가입
		</div>
		<table style="top:60px; position: absolute;">
			<tr>
				<td><label> 아이디</label></td>
				<td>
				<input type="text"  id="id"  size="15" 
				maxlength="10" style="width: 150px"> 
				<input type="button"  value="중복확인" 
				 id="doubleCheck"/><br/><!--  -->
				</td>
			</tr>
			<tr>
				<td><label> 비밀번호</label></td>
				<td>
				<input type="password" id="pass" style="width: 120px"> 
				</td>
			</tr>
			<tr>
				<td><label> 비밀번호 확인</label></td>
				<td>
				<input type="password"  id="confirm_pass" style="width: 120px" onblur="checkPw()" > 
				</td>
			</tr>
			<tr>
				<td><label> 비밀번호 확인 질문</label></td>
				<td>
					<select  id="pw_hint" style="width:160px">
						<option value="1">가장기억에남는장소는?</option>
						<option value="2">출신한 초등학교 이름은?</option>
						<option value="3">어린시절 별명은?</option>
						<option value="4">아버님의 성함은?</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label>  비밀번호 확인 답변</label></td>
				<td>
				<input type="text" id="pw_answer" style="width:300px"/> 
				</td>
			</tr>
			<tr>
				<td><label> 이름 </label></td>
				<td>
				<input type="text" id="name" style="width:100px"/> 
				</td>
			</tr>
			<tr>
				<td><label>  전화번호</label></td>
				<td>
					<select id="phone1"  >
					<option value="010">010</option>
					<option value="011" >011</option>
					<option value="012" >012</option>
					<option value="013" >013</option>
					<option value="017" >017</option>
					<option value="019" >019</option>
					</select>
						<label>-</label>
					<input type="text" id="phone2" maxlength="4" size="4"/>
					<label>-</label>
					<input type="text" id="phone3" maxlength="4" size="4"/>
				</td>
			</tr>
			<tr>
			<td><label> 우편번호</label></td>
			<td>
				<input type="text" size="5" id="zip" readonly="readonly"/>
					<input type="button" value="우편번호검색"  id="btnAddr"/><br/>
			<td>
			</tr>
			<tr>
				<td><label> 주소</label></td>
				<td>
				<input type="text" id="addr" style="width:300px"readonly="readonly"> 
				</td>
			</tr>
			<tr>
				<td><label>상세주소</label></td>
				<td>
				<input type="text" id="addr_detail"  style="width:300px"/> 
				</td>
			</tr>
			<tr>
			<td><label>이메일</label></td>
			<td>
				<input type="text" id="email" />
			<td>
			</tr>
			<tr>
				<td><label>성별</label></td>
				<td>
				<input type="radio"  id="gender" name="gender" value="1"/>남 
				<input type="radio"  id="gender" name="gender" value="2"/>여<br/>
				</td>
			</tr>
		
			<tr>
				<td colspan="2" style="text-align: center;">
					<input type="button" id="signUpBtn" value="회원가입"  style="width: 60px"/>
					<input type="button" id="signUpCancel"value="가입 취소" style="width: 60px; margin-left: 10px"/>
				</td>
			</tr>
		</table>
		</div>	
		
		</div><!--sign up  -->
	</form>
	</div><!-- super_container -->
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