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
			<li><a href="javascrpt:void(0)">주문내역을 확인하고 싶습니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">정상적으로 주문이 되었는지 확인하시려면 나의 정보 → 렌트 내역에서 확인 가능합니다.<br/>
					궁금하신 점이 있으시면 1:1 게시판 또는 콜센터(1577-0000, 오전 10시~오후 6시)로 문의주시면<br/> 친절하게 안내해드리겠습니다.</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">다른 상품으로 바꾸고 싶습니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">상품 구매 후 다른 상품으로 변경을 원하실 때, 기존 주문 건에서 변경은 어렵습니다.<br/>
					기존 주문 상품을 취소 혹은 반품 요청해 주신 후,<br/> 다른 상품으로 재구매 부탁드립니다.</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">장바구니에 넣은 상품이 사라졌습니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">판매가 종료 되었거나 이벤트 변경으로 인하여 상품이 사라지는 경우가 있습니다.<br/> 
					판매 기간이 지나면 자동으로 사이트에서 판매가 종료되며,<br/> 동시에 장바구니에 담겨있던 상품도 사라지니 꼭! 판매기간을 확인해주시길 바랍니다.<br/>(판매 종료일은 상품명 하단에서 확인하실 수 있습니다.)</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">주문을 하고 싶은데 빌림중이라고 뜹니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">다른 고객님이 해당 상품을 렌트하셨기때문에 빌림버튼이 활성화되면 그때 다시 이용부탁드립니다.</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">반품한 상품을 환불받지 않고 그 금액으로 다른 상품을 구매하고 싶습니다. </a>
				<ul>
					<li><a href="javascrpt:void(0)">가상 계좌 입금(계좌이체)의 경우는 가능하지만, 카드결제의 경우는 불가능합니다.<br/>
					카드 결제가 주문하시는 주문번호와 연동이되기 때문에<br/> 카드결제의 경우는 새롭게 주문해주시길 바랍니다.</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">주문 취소했는데 언제 환불되나요?</a>
				<ul>
					<li><a href="javascrpt:void(0)">카드 취소의 경우, 당일취소 요청 건은 당일 환불이 가능하지만<br/> 
					하루가 지난 시점부터는 카드사에서 승인 확인하여 취소완료를 하기까지 3일 ~ 5일 정도의 시간이 소요됩니다.<br/>
					가상 계좌 입금을 하신 경우, 취소 요청 시 고객님 명의로 된 계좌번호를 남겨주시면 더욱 빠른 처리가 가능하며, <br/>
					환불 내역 확인은 익일 오전 11시 이후에 가능합니다.<br/>(오전 취소건이라면 당일 오후 영업 마감시간까지 확인가능합니다.)
					</a></li>
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