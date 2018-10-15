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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
<script type="text/javascript">
$(function() {
	
		$("#name").val("${user_info.name}");
		$("#current_pass").val("${user_info.current_pass}");
		$("#pw_question").val("${user_info.pw_question}");
		$("#pw_answer").val("${user_info.pw_answer}");
		$("#mobile1").val("${user_info.phone1}");
		$("#mobile2").val("${user_info.phone2}");
		$("#mobile3").val("${user_info.phone3}");
		$("#email").val("${user_info.email}");
		$("#zipcode").val("${user_info.zipcode}");
		$("#addr1").val("${user_info.addr}");
		$("#addr2").val("${user_info.addr_detail}");
		
	$("#btn_adj").click(function() {
		var name=$("#name").val();
		var current_pass=$("#current_pass").val();
		var new_pass=$("#new_pass").val();
		var new_pass_confirm=$("#new_pass_confirm").val();
		var pw_question=$("#pw_question").val();//값 1~4
		var pw_answer=$("#pw_answer").val();
		var phone=$("#mobile1").val()+$("#mobile2").val()+$("#mobile3").val();
		var email=$("#email").val();
		var zipcode=$("#zipcode").val();
		var addr=$("#addr1").val()+"/"+$("#addr2").val();
		var id="${sessionScope.id}";
		if(new_pass !=""){
			if(new_pass==new_pass_confirm){
				current_pass=new_pass;
			}else{
				alert("변경하실 비밀번호와 비밀번호 확인이 같지 않습니다.")
				return
			}
		}
		
		var info_data = {
				id: id,
				name: name,
				current_pass: current_pass,
				pw_question: pw_question,
				pw_answer: pw_answer,
				phone: phone,
				email: email,
				zipcode: zipcode,
				addr: addr
		 };
		
				
		if(current_pass!=null){
				$.ajax({
					type : 'POST',
					data : info_data,
					url : 'changInfo.do',
					dataType : 'json',
					success : function(data) {
						if (data.result == "1") {
							alert("정보수정이 완료되었습니다.")
							$("#mFrm").submit()
						} else {
							alert("정보수정 실패")
						}
					}
				});//ajax
		}//end if
		
		
	});//click
	
	$("#btn_zipcode").click(function(){
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
				document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
				document.getElementById('addr1').value = fullAddr;

				// 커서를 상세주소 필드로 이동한다.
				document.getElementById('addr2').focus();
			}
		}).open();
	});
	
	
});//function 

</script>

</head>

<body >

<div class="super_container">

	<!-- Header -->
	
	<jsp:include page="header/header.jsp"></jsp:include>
	
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
<form id="mFrm" method="post" action="index.do">
<table>
		<tr>
			<td colspan="2" style="text-align:right; padding-right: 20px">
			<span class="red" >*은 필수입력입니다.</span>
			</td>
		</tr>
		<tr>
			<td><label>이름</label></td>
			<td>
			<input type="text" class="inputBox" id="name" size="15" 
					maxlength="10" style="width:220px">  
			</td>
		</tr>
		<tr>
			<td><label><span class="red">*</span>현재 비밀번호</label></td>
			<td>
			<input type="password" class="inputBox" id="current_pass" style="width:220px" 
			maxlength="15" readonly="readonly"> 
			</td>
		</tr>
		<tr>
			<td><label>새 비밀번호</label></td>
			<td>
			<input type="password" class="inputBox" id="new_pass" style="width:220px"
				maxlength="15"> 
				<label style="font-size: 12px">비밀번호는 숫자,영어 대/소문자,특수문자 포함 10자 이상으로 입력하시오.</label>
			</td>
		
		</tr>
		<tr>
			<td><label>새 비밀번호 확인</label></td>
			<td>
			<input type="password" class="inputBox" id="new_pass_confirm" style="width:220px" maxlength="15"> 
			</td>
		</tr>
		<tr>
			<td><label>비밀번호 확인 질문</label></td>
			<td>
				<select id="pw_question" class="inputBox" style="width:220px;">
				<option value="1" >가장 기억에 남는 장소는?</option>
				<option value="2" >출신한 초등학교 이름은?</option>
				<option value="3" >어린시절 별명은?</option>
				<option value="4" >아버님의 성함은?</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><label>비밀번호 확인 답변</label></td>
			<td>
			<input type="text" class="inputBox" id="pw_answer" size="30" style="width:220px" >
			</td>
		</tr>

		<tr>
			<td><label>연락처</label></td>
			<td>
				<select id="mobile1" class="inputBox">
				<option value="010" >010</option>
				<option value="011" >011</option>
				<option value="018" >018</option>
				<option value="019" >019</option>
				</select>
					<label>-</label>
				<input type="text" class="inputBox" style="width:50px;" id="mobile2"  maxlength="4"/>
				<label>-</label>
				<input type="text" class="inputBox" style="width:50px" id="mobile3" maxlength="4"/>
			</td>
		</tr>
		
		<tr>
			<td><label>이메일</label></td>
			<td>
			<input type="email" class="inputBox" id="email" style="width:300px" >
			</td>
		</tr>
		<tr>
		<td><label><span class="red">*</span> 우편번호</label></td>
		<td>
			<input type="text" class="inputBox" style="width:50px" readonly="readonly" id="zipcode" />
			<input type="button" value="우편번호검색" id="btn_zipcode" class="zipcode" style="width:100px"/><br/>
		</td>
		</tr>
		<tr>
			<td><label><span class="red">*</span> 주소</label></td>
			<td>
			<input type="text" class="inputBox" id="addr1" style="width:300px" readonly="readonly"> 
			</td>
		</tr>
		<tr>
			<td><label>  상세주소</label></td>
			<td>
			<input type="text" class="inputBox" id="addr2" style="width:300px"> 
			</td>
		</tr>


		</table>
		</form>
</div>
<br/>



<div id="btn_wrap" style="padding-right: 100px;">
 <input type="button" value="수정" class="btn" id="btn_adj"/>
 <input type="button" value="취소" class="btn" id="btn_cancle"/>
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