<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  
  	div {
    display: block;
	}
	body, code {
    font: 0.75em Verdana,Dotum,AppleGothic,sans-serif;
    color: #353535;
    background: #fff;
	}
	#wrap {
    position: relative;
    margin: 0 auto;
    width: 100%;
	}
	#container {
    width: 1304px;
    min-height: 600px;
    margin: 0 auto;
	}
	#contents02 {
    width: 1000px;
    min-height: 500px;
    margin: 80px auto 80px;
	}
	.titleArea {
    margin: 22px 0px 60px;
	}
	.titleArea h2 {
    font-family: 'Open Sans','맑은 고딕';
    letter-spacing: 0.07em;
    font-weight: 600;
    text-transform: uppercase;
    font-size: 13px;
    color: #555;
    text-align: center;
    margin: 10px auto 15px;
	}
	h2 {
    display: block;
    font-size: 1.5em;
    -webkit-margin-before: 0.83em;
    -webkit-margin-after: 0.83em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
	}
	.xans-mall-faq {
    font-family: '맑은 고딕';
	}
	.xans-mall-faq ul.link {
    height: 28px;
    border-bottom: 1px solid #aaa;
    line-height: 28px;
    font-size: 11px;
    margin: 60px 0 15px 0;
    font-family: '맑은 고딕';
	}
	ul, menu, dir {
    display: block;
    list-style-type: disc;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    -webkit-padding-start: 40px;
	}
	.xans-mall-faq ul.link li {
    float: left;
    margin: 0 auto;
	}
	li {
    display: list-item;
    text-align: -webkit-match-parent;
    list-style: none;
	}
	.xans-mall-faq ul.link li:first-child a {
    margin-left: 110px;
	}
	.xans-mall-faq ul.link li a {
    display: block;
    width: 95px;
    height: 27px;
    padding: 0 5px;
    color: #333;
    line-height: 27px;
    text-decoration: none;
    text-align: center;
	}
	a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
	}
	.xans-mall-faq .cont {
    padding: 27px 10px 46px 9px;
    color: #555;
    line-height: 18px;
    font-size: 11px;
	}
	.xans-mall-faq .cont h3 {
    margin: 0 0 20px;
    color: #333;
    font-size: 11px;
	}
	h3 {
    display: block;
    font-size: 1.17em;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
	}
	.xans-mall-faq .cont {
    padding: 27px 10px 46px 9px;
    color: #555;
    line-height: 18px;
    font-size: 11px;
	}
	hr.layout {
    display: none;
	}
	hr {
    display: block;
    unicode-bidi: isolate;
    -webkit-margin-before: 0.5em;
    -webkit-margin-after: 0.5em;
    -webkit-margin-start: auto;
    -webkit-margin-end: auto;
    overflow: hidden;
    border-style: inset;
    border-width: 1px;
	}
	
  </style>
</head>
<body>
<%@ include file="../include/uppermost-nav.jsp" %>
<div class="container col-xs-12" id="id-main-contents">
<div id="wrap">
	<div id="container">
		<div id="contents02">
			<div class="titleArea">
				<h2>Shop Guide</h2>
			</div>
			<div class="xans-element- xans-mall xans-mall-faq">
				<ul class="link">
					<li><a href="#member">회원가입 안내</a></li>
					<li><a href="#order">주문 안내</a></li>
					<li><a href="#payment">결제 안내</a></li>
					<li><a href="#delivery">배송 안내</a></li>
					<li><a href="#change">교환/반품 안내</a></li>
					<li><a href="#refund">환불 안내</a></li>
					<li><a href="#etc">기타 안내</a></li>
				</ul>
				<div id="member">
					<div class="cont">
						<h3>회원가입 안내</h3>
						[회원가입] 메뉴를 통해 이용약관, 개인정보보호정책 동의 및 일정 양식의 가입항목을 기입함으로써 회원에 가입되며, 가입 즉시 서비스를 무료로 이용하실 수 있습니다.
						<br>
						주문하실 때에 입력해야하는 각종 정보들을 일일이 입력하지 않으셔도 됩니다. 공동구매, 경매행사에 항상 참여하실 수 있습니다. 회원을 위한 이벤트 및 각종 할인행사에 참여하실 수 있습니다.
					</div>
				</div>
				<div id="order">
					<div class="cont">
						<h3>주문 안내</h3>
						상품주문은 다음단계로 이루어집니다.
						<br><br>
						- Step1: 상품검색
						<br>
						- Step2: 장바구니에 담기
						<br>
						- Step3: 회원ID 로그인 또는 비회원 주문
						<br>
						- Step4: 주문서 작성
						<br>
						- Step5: 결제방법선택 및 결제
						<br>
						- Step6: 주문 성공 화면 (주문번호)
						<br><br>
						비회원 주문인경우 6단계에서 주문번호와 승인번호(카드결제시)를 꼭 메모해 두시기 바랍니다. 단, 회원인 경우 자동 저장되므로 따로 관리하실 필요가 없습니다.
					</div>
				</div>
				<div id="payment">
					<div class="cont">
						<h3>결제 안내</h3>
						고액결제의 경우 안전을 위해 카드사에서 확인전화를 드릴 수도 있습니다. 확인과정에서 도난 카드의 사용이나 타인 명의의 주문등 정상적인 주문이 아니라고 판단될 경우 임의로 주문을 보류 또는 취소할 수 있습니다.   
						<br><br>
						무통장 입금은 상품 구매 대금은 PC뱅킹, 인터넷뱅킹, 텔레뱅킹 혹은 가까운 은행에서 직접 입금하시면 됩니다.  
						<br>
						주문시 입력한 입금자명과 실제입금자의 성명이 반드시 일치하여야 하며, 7일 이내로 입금을 하셔야 하며 입금되지 않은 주문은 자동취소 됩니다. 
					</div>
				</div>
				<div id="delivery">
					<div class="cont">
						<h3>배송 안내</h3>
						배송 방법 : 택배
						<br>
						배송 지역 : 전국지역
						<br>
						배송 비용 : 조건부 무료 : 주문 금액 50,000원 미만일 때 배송비 2,500원을 추가합니다.
						<br>
						배송 기간 : 2일 ~ 5일
						<br>
						배송 안내 : - 산간벽지나 도서지방은 별도의 추가금액을 지불하셔야 하는 경우가 있습니다.
						<br>
						고객님께서 주문하신 상품은 입금 확인후 배송해 드립니다. 다만, 상품종류에 따라서 상품의 배송이 다소 지연될 수 있습니다.
					</div>
				</div>
				<div id="change">
					<div class="cont">
						<h3>교환/반품 안내</h3>
						<b>교환 및 반품이 가능한 경우</b>
						<br>
						- 상품을 공급 받으신 날로부터 7일이내 단, 가전제품의
						<br>
						  경우 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우에는 교환/반품이 불가능합니다.
						  <br>
						- 공급받으신 상품 및 용역의 내용이 표시.광고 내용과
						<br>
						  다르거나 다르게 이행된 경우에는 공급받은 날로부터 3월이내, 그사실을 알게 된 날로부터 30일이내
						<br><br>
						<b>교환 및 반품이 불가능한 경우</b>
						<br>
						- 고객님의 책임 있는 사유로 상품등이 멸실 또는 훼손된 경우. 단, 상품의 내용을 확인하기 위하여
						<br>
						  포장 등을 훼손한 경우는 제외
						  <br>
						- 포장을 개봉하였거나 포장이 훼손되어 상품가치가 상실된 경우
						<br>
						  (예 : 가전제품, 식품, 음반 등, 단 액정화면이 부착된 노트북, LCD모니터, 디지털 카메라 등의 불량화소에
						  <br>
						  따른 반품/교환은 제조사 기준에 따릅니다.)
						  <br>
						- 고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우 단, 화장품등의 경우 시용제품을 
						<br>
						  제공한 경우에 한 합니다.
						  <br>
						- 시간의 경과에 의하여 재판매가 곤란할 정도로 상품등의 가치가 현저히 감소한 경우
						<br>
						- 복제가 가능한 상품등의 포장을 훼손한 경우
						<br>
						  (자세한 내용은 고객만족센터 1:1 E-MAIL상담을 이용해 주시기 바랍니다.)
						<br><br>
						※ 고객님의 마음이 바뀌어 교환, 반품을 하실 경우 상품반송 비용은 고객님께서 부담하셔야 합니다.
						<br>
						  (색상 교환, 사이즈 교환 등 포함)
					</div>
				</div>
				<div id="refund">
					<div class="cont">
						<h3>환불 안내</h3>
						환불시 반품 확인여부를 확인한 후 3영업일 이내에 결제 금액을 환불해 드립니다. 
						<br>
						신용카드로 결제하신 경우는 신용카드 승인을 취소하여 결제 대금이 청구되지 않게 합니다.
						<br>
						(단, 신용카드 결제일자에 맞추어 대금이 청구 될수 있으면 이경우 익월 신용카드 대금청구시 카드사에서 환급처리
						<br>
						됩니다.)
					</div>
				</div>
				<div id="etc">
					<div class="cont">
						<h3>기타 안내</h3>
						<b>이용기간</b>
						<br>
						주문으로 발생한 적립금은 배송완료 체크시점으로 부터 20일이 지나야 실제 사용 가능 적립금으로 변환됩니다. 20일 동안은 미가용 적립금으로 분류 됩니다. 미가용 적립금은 반품, 구매취소 등을 대비한 실질적인 구입이 되지 않은 주문의 적립금 입니다. 
						<br>
						사용가능한 적립금(총 적립금-사용된적립금-미가용적립금)은 상품구매시 즉시 사용하실 수 있습니다.
						<br><br>
						<b>이용조건</b>
						<br>
						적립금사용시 최소구매가능적립금(구매가능한 적립금 요구선)은 0원 입니다. 적립금 사용시 최대구매가능적립금(적립금 1회 사용 가능 최대금액)은 '한도제한없음' 입니다.
						<br><br>
						<b>소멸조건</b>
						<br>
						주문취소/환불시에 상품구매로 적립된 적립금은 함께 취소됩니다. 회원 탈퇴시에는 적립금은 자동적으로 소멸됩니다. 최종 적립금 발생일로부터 3년 동안 추가적립금 누적이 없을 경우에도 적립금은 소멸됩니다.
					</div>
				</div>
			</div>
		</div>
		<hr class="layout">
	</div>
	<hr class="layout">
</div>
</div>
<%@ include file="../include/lowermost-footer.jsp" %>
</body>
</html>