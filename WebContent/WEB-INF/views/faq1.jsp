<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<style>
* {
	padding: 0;
	margin: 0
}

ul {
	list-style: none
}

.list-w>ul>li:first-child {
	border-top: 1px solid #d7d8da
}

.list-w>ul>li {
	border-bottom: 1px solid #d7d8da;
}

.list-w>ul>li>a {
	font-size: 16px;
	letter-spacing: -0.06em;
	padding: 10px;
	padding-left: 16px;
	display: block;
	background: url(../images/menu_open.png) no-repeat center right;
	margin-right: 10px;
	background-size: 24px;
	font-weight: bold
}

.list-w li ul {
	display: none
}

.list-w li li a {
	font-size: 15px;
	letter-spacing: -0.05em;
	padding: 6px;
	padding-left: 16px;
	display: block;
}
a{text-decoration: none; color:black}
</style>
<script src="http://code.jquery.com/jquery-latest.js">
 </script>
</head>
<body>
	<div class="list-w">
		<ul>
			<li><a href="javascrpt:void(0)">배송 기간을 알고 싶습니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">국내 배송 상품의 경우 구매 후 주말 및 공휴일을 제외한 영업일 기준으로 약 3~5일 내에 수령 가능하며,<br/>
					해외 배송 상품의 경우 통관 절차에 따라 구매 후 영업일 기준으로 약 10일 내로 수령 가능합니다.<br/>
					* 단 일부 직구, 구매대행 제품들은 2~3주의 배송시일이 걸릴 수 있어 상세페이지를 확인 부탁드립니다.
					</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">주문한 내용을 확인하고 싶습니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">주문 내용은 홈페이지 로그인 후 나의 정보 → 빌림 목록에서 자세하게 확인해 보실 수 있습니다.</a></li>
				</ul></li>
		</ul>
	</div>
	
<script>
$('.list-w li a').click(function(){
	if($(this).find("+ul").length){ 
		$(this).find("+ul").stop().slideToggle()
		.parent().siblings().find("ul:visible").stop().slideUp();
	}
});
</script>
</body>
</html>