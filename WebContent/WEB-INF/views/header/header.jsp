<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header">
		<div class="header_inner d-flex flex-row align-items-center justify-content-start">
		<a href="index.do">
			<div class="logo"><img style="width:190px;" src="images/BILRIM.jpg" ></div>
		</a>
			<nav class="main_nav">
				<ul>
					<li><a href="categories.do?target=bag">가방</a></li>
					<li><a href="categories.do?target=accessories">시계/악세사리</a></li>
					<li><a href="categories.do?target=wallet">지갑</a></li>
					<li><a href="ticket.do">이용권</a></li>
					<li><a href="Company_info.do">BILRIM</a></li>
					<li><a href="customer_center.do">고객센터</a></li>
				</ul>
			</nav>
			
			<div class="header_content ml-auto">
				<%
				
					if(session.getAttribute("id")==null){
				
				%>
				<div class="loginSignup" style="width:300px; height:50px;">
					<!-- 로그인 -->
					<div>
						<a href="login.do">
							<img style="margin-top: 8px" src="http://211.63.89.142:11095/swsSpring_prj/images/login.png" alt="이미지를 불러오지 못하였습니다">
							</a>
							<!-- 회원가입 -->
						<a href="signUpTerms.do">
							<img src="http://211.63.89.142:11095/swsSpring_prj/images/signUp.png" alt="이미지를 불러오지 못하였습니다">
						</a>
					</div>
				</div><!--shopping  -->
				<%}else{ %>
				<div class="shopping">
					<!-- 장바구니 -->
					
					<a href="#">
						<div class="cart">
							<img src="http://211.63.89.142:11095/swsSpring_prj/images/shopping-bag.svg" alt="">
						</div>
					</a>
					
					<!-- 사용자정보 -->
					<a href="Modify_password.do">
						<div class="avatar">
							<img src="http://211.63.89.142:11095/swsSpring_prj/images/avatar.svg" alt="">
						</div>
					</a>
					<span id="userName">   ${sessionScope.id}  님 </span>
					<span id="logout"><input type="button" id="logout_btn" value="LOGOUT"  style="width: 60px; background-color: #FFFFFF; margin-left: 10px;"/></span>
				</div>
				<%} %>
			</div><!--header_content ml-auto  -->
		</div>
	</header>