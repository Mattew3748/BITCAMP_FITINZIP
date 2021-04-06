<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FITINZIP | 결제</title>
<link rel="stylesheet" type="text/css" href="../resources/product/css/productPay.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<script>
	
	
</script>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	
	<section class="order-checkout">
		<article class="contents">
			<div class="order-wrap">
				<h2 class="contents-title">
					<span class="title">주문결제</span>
				</h2>
				<div class="order-tab-wrap" >
					<div class="order-tab reservations-customer" id="block">
						<div class="header">
							<h5 class="tit">주문고객</h5>
						</div>
						<div id="orderinfo-review" class="body view">
							<div class="order-complete">
								<div class="uk-grid uk-margin-bottom">
									<div class="uk-width-7-10">
										<dl><dd class="uk-margin-small-bottom">${sessionScope.member.name }</dd></dl>
										<dl><dd class="uk-margin-small-bottom">${sessionScope.member.phone }</dd></dl>
										<dl><dd class="uk-margin-small-bottom">${sessionScope.member.id }</dd></dl>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="order-tab" id="block">
						<div class="header">
							<h5 class="tit">배송지 정보</h5>
						</div>	
						<div class="delivery-info">
							<div id="shipping-review" class="body view">
								<div class="order-complete">
									<div class="uk-grid">
										<div class="uk-width-7-10">
											<dl><dd class="uk-margin-small-bottom text-box">
												<p>(${sessionScope.postcode })
													${sessionScope.address } 
													${sessionScope.detailAddress }
												</p>
												<p id="msg">배송메모: ${sessionScope.directMsg }</p>
											</dd></dl>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="order-tab reservations-order" id="block">
						<div class="header">
							<h5 class="tit">결제수단 선택</h5>
						</div>
						<div class="payment-review">
							<input type="hidden" name="장바구니 각 넘버">
							<div class="body">
								<ul class="order-field-container uk-grid">
									<li class="order-field-list uk-width-small-1-1 uk-width-medium-1-1">
										<div class="payment-method-list">
											<div class="payment-method-item">
												<!-- <form action="/kakaoPay" method="post"> -->
												<button id="kakao" class="payMethod">
												<h6 class="payment-method-item-title">
													<img style="width:60px; " src="../resources/product/img/icon_kakaopay_100.jpg" alt="카카오페이">
													카카오페이
												</h6>
												</button>
											</div>
											<div class="payment-method-item">
												<button id="card" class="payMethod">
												<h6 class="payment-method-item-title">신용카드</h6>
												</button>
											</div>
										</div>
									</li>
									<li class="order-field-list uk-width-small-1-1 uk-width-medium-1-1 uk-margin-bottom-remove">
										<form name="checkout-agree-form">
											<div class="input-form-group">
												<span class="input-checkbox">
													<input type="checkbox" name="isCheckoutAgree">
													<label for="isCheckoutAgree">
														<i class="icon-checkbox"></i>
														<span class="label font-size-s">위 주문의 상품, 가격, 배송정보에 동의합니다.</span>
													</label>
												</span>
											</div>
										</form>
									</li>
								</ul>
							</div>
							<div class="footer">
								<form method="POST" class="uk-width-small-1-1 uk-width-medium-1-1"
								action="">
								<button type="submit" id="money" class="button xlarge width-max">
									<c:set var="sum" value="0"/>
									<c:forEach var="cartList" items="${cartList }">
									<c:set var="sum" value="${sum + cartList.proPrice }"/>
									</c:forEach>
								<span class="price sale total" id="pay"><strong style="font-size: 17px;"><c:out value="${sum }"/> 원 결제하기</strong></span>
								</button>
								</form>
							</div>
						</div>
					</div>
				</div>	
				<div class="order-tab-wrap order_tab_wrap order_tab_wrap--right">
					<div class="order-tab product-checkout checkout">
					<div class="header">
						<h5 class="tit"><strong>주문내역</strong></h5>
					</div>
					<div id="order-summary" class="body view">
						<c:forEach var="cartList" items="${cartList }">
						<div class="cart-order_list">
							<dl class="order-list">
								<dt class="image-wrap">
									<img src="${cartList.proImg }" style="width:120x; height:120px;" alt="상품이미지">
								</dt>
								<dd class="order-info">
									<a class="tit">${cartList.proName }</a>
									<div class="">옵션 </div>
									<div class="current-option-wrap">
										<input type="hidden" name="옵션">
										<span class="qty" id="amount">수량 : ${cartList.amount }</span>
									</div>
									<span class="price-wrap">
										<strong class="retail-price">${cartList.proPrice } 원</strong>
									</span>
								</dd> 
							</dl>
						</div>
						</c:forEach>
						
						<div class="uk-width-1-1 info-price">
							<span class="item-price">
								<span class="label">상품 금액</span>
								<c:set var="sum" value="0"/>
								<c:forEach var="cartList" items="${cartList }">
									<c:set var="sum" value="${sum + cartList.proPrice }"/>
								</c:forEach>
								<span class="price"><strong><c:out value="${sum }"/> 원</strong></span>
							</span>
							<span class="delivery-price">
								<span class="label">배송비</span>
								<span class="price"><strong>0 원</strong></span>
							</span>
							<div class="total-price">
								<span class="label">총 결제 예정 금액</span>
								<c:set var="sum" value="0"/>
								<c:forEach var="cartList" items="${cartList }">
									<c:set var="sum" value="${sum + cartList.proPrice }"/>
								</c:forEach>
								<span class="price sale total" id="pay"><strong><c:out value="${sum }"/> 원</strong></span>
							</div>
						</div>
					</div>
					</div>
				</div>	
			</div>
		</article>
	</section>
	
	
	
	
	<!-- 임시 div -->
	<div style="height:600px;"></div>
	
	
	<!-- Footer -->
  	<jsp:include page="../footer.jsp"></jsp:include>
  	
<script>
	$(function(){
		
		$("#kakao").on("click", function(){
			$(this).addClass('active');
			return 0;
		})
		
		$("#card").on("click", function(){
			$(this).addClass('active');
		})
		//둘 다 선택된 상태로 됨;;;;;
		
		//카카오페이 누르고 동의까지 해야 결제창 뜨게
		var check = $("input[type=checkbox]").is(":checked");
		
		$("#money").click(function(){
			
			if(check == true && kakao() == 0) {
				alert("dddd");
				IMP.init('imp09300600');
				IMP.request_pay({
					pg : 'kakao',
					pay_method : 'card',
					merchant_uid : 'merchant_' + new Date().getTime(),
					name : 'FITINZIP',
					amount : 1,
					buyer_email : '',
					buyer_name : '',
					buyer_tel : '',
					buyer_addr : '',
					buyer_postcode : ''
				}, function (rsp) {
					console.log(rsp);
					if (rsp.success) {
						var msg = '결제 완료';
						msg += '고유ID : ' + rsp.imp_uid;
						msg += '상점 거래ID : ' + rsp.merchant_uid;
						msg += '결제 금액 : ' + rsp.paid_amount;
						msg += '카드 승인번호 : ' + rsp.apply_num;
						
					} else {
						var msg = '결제 실패';
						msg += '에러 내용 : ' + rsp.error_msg;
					}
					alert(msg);
				});  
			
			} else {
				alert("상품, 가격, 할인, 배송정보에 동의해주세요");
			}
		})
	})


	/*
	$(function(){
		$("#kakaoPay").click(function(){
			alert("dddd");
			IMP.init('imp09300600');
			IMP.request_pay({
				pg : 'kakao',
				pay_method : 'card',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : 'FITINZIP',
				amount : 1,
				buyer_email : '',
				buyer_name : '',
				buyer_tel : '',
				buyer_addr : '',
				buyer_postcode : ''
			}, function (rsp) {
				console.log(rsp);
				if (rsp.success) {
					var msg = '결제 완료';
					msg += '고유ID : ' + rsp.imp_uid;
					msg += '상점 거래ID : ' + rsp.merchant_uid;
					msg += '결제 금액 : ' + rsp.paid_amount;
					msg += '카드 승인번호 : ' + rsp.apply_num;
					
				} else {
					var msg = '결제 실패';
					msg += '에러 내용 : ' + rsp.error_msg;
				}
				alert(msg);
			});  
		
		});
	})
	
	*/
	
</script>
</body>
</html>