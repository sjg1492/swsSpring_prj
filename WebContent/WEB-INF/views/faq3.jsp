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
			<li><a href="javascrpt:void(0)">배송 기간을 알고 싶어요.</a>
				<ul>
					<li><a href="javascrpt:void(0)">국내 배송 상품의 경우 구매 후 주말 및 공휴일을 제외한 영업일 기준으로 약 3~5일 내에 수령 가능하며,<br/> 
					해외 배송 상품의 경우 통관 절차에 따라 구매 후 영업일 기준으로 약 10일 내로 수령 가능합니다. <br/>
					직구 제품의 경우 2~3주의 배송시일이 소요될 수 있습니다.<br/>
					(단, 천재지변에 의한 지연 및 설, 추석 등 연휴 전후 물류량 증가 및 택배사 사정에 의해 지연될 수 있습니다.)
					</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">배송비는 얼마인가요?</a>
				<ul>
					<li><a href="javascrpt:void(0)">7만원 이상 상품에 한해 무료배송을 실시하고 있습니다.</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">배송지(연락처)를 변경하고 싶습니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">상품이 배송 전이라면 변경할 주소지를 1:1 게시판 또는 콜센터(1577-3683, 오전 10시~오후 6시)로 문의 주시면 변경된 주소로 출고가 가능합니다.<br/> 
					하지만 상품이 출고되어 배송이 진행되고 있는 상태라면 주소지(연락처) 변경은 불가능합니다.
</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">주문을 하고 싶은데 빌림중이라고 뜹니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">주말(공휴일)에도 상품 출고 되나요?<br/>
					평일에만 택배 출고가 진행되어 공휴일에는 상품 발송이 어려운 점 양해 부탁드립니다.</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">해외에서 받고 싶습니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">아직 리본즈에서는 국내 배송만 가능하며, 해외배송은 불가능한 점 양해 부탁드립니다.</a></li>
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