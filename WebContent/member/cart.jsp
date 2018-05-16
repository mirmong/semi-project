<%@page import="semi.vo.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="semi.dao.CustomerDao"%>
<%@page import="semi.vo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<style type="text/css">
.my-box { border:1px solid; padding:10px; height:90px;  font-size: 12px;  }
</style>
<script type="text/javascript">

function AllCheck() {
	var allChecked = document.getElementById("allCheck").checked;
	var chkorders = document.querySelectorAll('input[name="name"]');
	
	for (var i=0; i<chkorders.length; i++) {
	
		var chkorder = chkorders[i];
		chkorder.checked = allChecked;
	}
}
</script>
<script type="text/javascript">
function deleteCheck() {
	var chkorders = document.querySelectorAll('input[name="name"]');
</script>	
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<jsp:include page="/include/uppermost-nav.jsp" />	
<body>
<div id="id-main-contents">
	<%
            Customer customer = (Customer) session.getAttribute("logged-in-user");
      		CustomerDao customerDao = CustomerDao.getInstance();
      		int no = customer.getNo();
      		List<CartItem> cartItem = customerDao.getCartItemsByCustomerNo(no);
      		
      		%>	
<div class="xans-element- xans-order xans-order-basketpackage "><!-- 혜택정보 -->
<div class="xans-element- xans-order xans-order-dcinfo df-base-box typeMember  "><div class="information">
             <h4>CART</h4>
             <div class="my-box" >
             <div class= "bankBenefit-info">
            <h5 class="title" >혜택정보</h5>
           
                    <p><strong><%=customer.getId() %></strong> 님은, [일반회원] 회원이십니다.</p>
                 </div>
                    <ul class="displaynone">
<li class="displaynone">
                    </ul>
                <ul class="mileage">
					<li><a href="/myshop/mileage/historyList.html">포인트 : <strong><%=customer.getPoint() %></strong></a></li>
                	<li><a href="/myshop/coupon/coupon.html">쿠폰 : <strong>0개</strong></a></li>
                </ul>
			</div>
			    </div>
			</div>
     </div>
</div>

<!-- 탭 -->
<div class="xans-element- xans-order xans-order-tabinfo df-base-tab typeLight ">
	<ul class="menu"></ul>
</div>
		<%
		int total = 0;
		
			if (cartItem == null) {
		%>
				<p> 장바구니에 담긴 상품이 없습니다 </p>
		<%
			} else {
				
				%>
				
<!-- 일반상품 -->
<div class="orderListArea">
        <div class="xans-element- xans-order xans-order-normtitle title "><h3>일반상품 (1)</h3>
</div>

        <!-- 일반상품 (기본배송) -->
        <table width="100%" border="1" summary="" class="xans-element- xans-order xans-order-normnormal boardList xans-record-"><caption></caption>
<colgroup>
<col style="width:34px;"/>
<col style="width:92px;"/>
<col style="width:auto;"/>
<col style="width:95px;"/>
<col style="width:100px;"/>
<col style="width:85px;"/>
<col style="width:85px;"/>
<col style="width:85px;"/>
<col style="width:85px;"/>
<col style="width:100px;"/>
</colgroup>
<thead><tr>

<th scope="col"><input type="checkbox" id="allCheck"  onclick="AllCheck();"/></th>
                    <th scope="col">이미지</th>
                    <th scope="col">상품정보</th>
                    <th scope="col" id="spans">판매가</th>
                    <th scope="col">수량</th>
                    <th scope="col">적립금</th>
                  
                    <th scope="col">배송비</th>
                    <th scope="col">합계</th>
                    <th scope="col">선택</th>
                </tr></thead>

<% 

	for(CartItem c : cartItem) {
%>
                <tbody class="xans-element- xans-order xans-order-list">
                	<tr class="xans-record-">
						<td><input type="checkbox" id="name" name="name" ></td>
                    	<td class="thumb"><a href=""><img src="<%=c.getName()%>" onerror="this.src="" alt=""/></a></td>
                    	<td class="product">
	                        <a href="/semi/product/detail.jsp?pro-no=<%=c.getNo()%>">
	                        	<strong class="name"><%=c.getName() %> </strong>
	                        	<span class="icon"><img src=""  alt="" /></span>
	                        </a>
	                        <span class="displaynone"><br/></span>
                        	<ul class="xans-element- xans-order xans-order-optionall option">
                        		<li class="xans-record-">
									[옵션:<%=c.getColor() %>/<%=c.getProSize() %>] 
									<span class="displaynone"></span>
									<br/>
									<span class=""><a href="#none"  class="df-btn light tiny mt-7 displaynone"></a></span>
                                <!-- 참고 : 옵션변경 레이어 -->
									<div class="prdModify">
										<i class="fa fa-times-circle"></i></a>
                                	</div>
<!-- //참고 -->
                           		 </li>
							</ul>
						</td>
                    	<td class="price">
                        	<div class="discount">
								<strong><%=c.getPrice() %></strong><p class="displaynone"></p>
							</div>
                    	</td>
                   		<td>
						<span class="">
							<span class="qty"  >
								<input id="qty-field-<%=c.getNo()%>" name="qty" size="2" value="<%=c.getQty() %>" type="text"   />
								<a href="javascript:;" ><img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_up.gif" alt="증가" class="up"/></a>
								<a href="javascript:;" ><img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_down.gif" alt="감소" class="down"/></a>
							</span>
							<a href="javascript:modifyQty(<%=c.getNo()%> )"  class="df-btn light tiny ml-2">변경</a>
						</span>
						<span class="displaynone"></span>
                    </td>
                    <td class="mileage"><input id='product_mileage_all_14193_000B' name='product_mileage_all' value='100' type="hidden" ><img src="//img.echosting.cafe24.com/design/common/icon_cash.gif" /> <%=c.getPoint() %>원</td>
                    <td>
						<p class="">2,500원<span class="displaynone"><br/></span><br/></p></td>
                    <td class="total">
						<strong><%=c.getPrice()*c.getQty()+2500 %></strong><div class="displaynone"></div>
					</td>
                    <td class="button">
                        <a href="/semi/pay/pay.jsp?proNo=<%=c.getNo()%>" class="df-btn highlight small block" onclick="/semi/pay/pay.jsp?proNo=<%=c.getNo()%>">주문하기</a>
                        <a href="deletecart.jsp?proNo=<%=c.getNo() %>" class="df-btn light small block mt-4" onclick="">삭제</a>
                    </td>
              </tr>
</tbody>

	<%
	for(int i =0; i<cartItem.size(); i++) {

}
	total+=c.getPrice()*c.getQty();
	
				}
			}
		%>
		<tfoot><tr>
	<td colspan="10">
		<strong class="type">[기본배송]</strong> 상품구매금액 <strong><span id="total-price-span">
		</span><%=total %> <span class="displaynone"></span>
		</strong><span class="displaynone"> </span> + 배송비 2,500<span class="displaynone"> 
		</span> <span class="displaynone"></span> = 합계 : <strong class="total"><span><%=total %></span>원</strong> 
		<span class="displaynone"> </span>
	</td>
</table>

</div>


<!-- 총 주문금액 : 국내배송상품 -->
<div class="xans-element- xans-order xans-order-totalsummary  "><table width="100%" border="1" summary="">
	<caption>총 주문금액</caption>
            <colgroup>
<col style="width:23%;"/>
<col style="width:24%;"/>
<col style="width:23%;" class="displaynone"/>
<col style="width:auto;"/>
</colgroup>
				<thead>
					<tr>
						<th scope="col">
						<span>총 상품금액</span><a href="#none" onclick="" class="more displaynone"></a>
						</th>
                    	<th scope="col">총 배송비</th>
                   	    <th scope="col">결제예정금액</th>
                	</tr>
                </thead>
				<tbody>
					<tr>
					<td class="price">
						<div class="box"><strong><%=total %></strong>원 <span class="tail displaynone"></span>
						</div>
					</td>
                    <td class="option">
                    	<div class="box">
							<strong>+</strong><strong>2,500</strong>원 <span class="tail displaynone"></span>
						</div>
					</td>
                    <td class="total">
                    	<div class="box">
							<strong>=</strong><strong></strong><%=total+2500 %>원 <span class="tail displaynone"></span>
						</div>
					</td>
               	    </tr>
                </tbody>
</table>
<!-- 총 할인금액 상세내역 레이어 --><!-- 총 상품금액 상세내역 레이어 --><div id="order_layer_detail" class="totalDetail df-base-layer">     
		</div>
            <a href="#none" class="close" onclick="OrderLayer.offDiv('order_layer_detail');">
            <img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"/></a>
        </div>


<!-- 주문 버튼 -->
<div class="xans-element- xans-order xans-order-totalorder df-base-button justify fs-0">
<a href="" onclick=""  class="df-btn highlight big mr-3  ">전체상품주문</a>
<a href="" onclick="" link-order="" link-login="" class=" ">선택상품주문</a><span class="g-right">
            <a href="http://localhost/semi/index.jsp" class="df-btn light big">쇼핑계속하기</a>
        </span>
<!-- 선택상품 제어 버튼 -->
<div class="xans-element- xans-order xans-order-selectorder df-base-button fs-0 "><span class="g-left">
<a href="deletecart.jsp" class="df-btn medium normal mr-5" onclick="Basket.deleteBasket()">삭제하기</a>
       
        </span>
<span class="g-right">
            <a href="alldeletecartitems.jsp" class="df-btn light normal" onclick="">장바구니비우기</a>
            <a href="#none" class="df-btn light normal ml-5" onclick="Basket.estimatePrint(this)" ></a>
        </span>
        
</div>
<!-- //장바구니 모듈 Package -->



<!-- 이용안내 -->
<div class="xans-element- xans-order xans-order-basketguide df-base-help "><h3>이용안내</h3>
<div class="inner">
        <h4>장바구니 이용안내</h4>
        <ol>
<li class="item1">해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.</li>
            <li class="item2">해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.</li>
            <li class="item3">선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
            <li class="item4">[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
            <li class="item5">장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
            <li class="item6">파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.</li>
        </ol>
<h4>무이자할부 이용안내</h4>
        <ol>
<li class="item1">상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.</li>
            <li class="item2">[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.</li>
            <li class="item3">단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.</li>
        </ol>
</div>
</div>
</div>
</div>
</div>


<jsp:include page="/include/lowermost-footer.jsp" /> 
<script>
	function modifyQty(no) {
		var qty = document.getElementById("qty-field-" + no).value;
		location.href = "updateQty.jsp?no="+no+"&qty=" + qty;
	}
</script>
</body>
</html>