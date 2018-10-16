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
			<li><a href="javascrpt:void(0)">결제가 안됩니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">PC, Windows 7 이상, Internet Explorer 10 이상에 최적화 되어있습니다.<br/>
					혹시라도 Internet Explorer 7,8 또는 9버전에서 결제가 어려우시다면 업데이트 후 결제 시도 부탁 드립니다.<br/>
					계속해서 결제에 실패하실 경우, 1:1 게시판으로 문의 주시기 바랍니다.<br/>
					사파리, 크롬 등에서도 결제가 가능하도록 개발중이오니 조금만 더 기다려 주세요.<br/>
					모바일(스마트폰/태블릿 PC 등)의 경우 네트워크 장애가 발생하거나 기타 외부적 요인으로 인해 에러가 발생할 수 있습니다.<br/>
					안정된 네트워크 혹은 가급적 PC를 이용하여 결제해 주시면 좀 더 원활하게 주문하실 수 있습니다.</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">신용카드 할부 변경하고 싶습니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">할부 변경의 경우 , 직접 카드사 쪽으로 문의 주셔야 합니다.<br/>
					만약, 카드사에서 부정적인 답변을 들으셨다면<br/>저희 빌림에(1:1문의 게시판, 콜센터(1577-0000, 오전 10시~오후 6시), 또는 카카오톡 '빌림' 친구추가 후 문의) 문의 부탁드립니다.</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">신용카드 부분취소 가능한가요?</a>
				<ul>
					<li><a href="javascrpt:void(0)">저희 쪽으로 부분 취소를 원하시는 주문번호와 제품명을 알려주시면 취소하실 상품의 부분결제 취소 진행을 도와드리겠습니다.<br/>
					(1:1문의 게시판, 콜센터(1577-3683, 오전 10시~오후 6시), 또는 카카오톡 '빌림' 친구추가 후 문의) 남겨주시면 확인하여 안내 드리고 있습니다.
					</a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">빌림중인 상품이 언제 빌림가능한지 알고싶습니다.</a>
				<ul>
					<li><a href="javascrpt:void(0)">죄송하게도 언제 고객님이 상품을 반납하실지는 불확실 하다 보니 정확한 답변을 드리기 어렵습니다.<br/>
					번거로우시더라도 저희 빌림 사이트 자주 방문하여 상품이 빌림 가능한지 확인을 해주시길 바랍니다. </a></li>
				</ul></li>
			<li><a href="javascrpt:void(0)">정품이 정말 맞나요?</a>
				<ul>
					<li><a href="javascrpt:void(0)">저희 빌림은 국내외 브랜드 공식 전개사 또는 최상위 공급업체에서 제공하는 정품만을 유통하고 있습니다.<br/>
					또한, 빌림 내의 감정사 분께서 직접 감정 후 판매하고 있습니다.<br/>
					구매하신 상품이 정품 판별 프로세스를 통해 가품으로 확인 될 경우 구매금액의 200%를 보상해드립니다.<br/>
					 *가품 확인 시에는?<br/>
					구매 가격 100% 환불 + 구매 가격 100% 보상</a></li>
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