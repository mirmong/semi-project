<%@page import="semi.vo.Customer"%>
<%@page import="semi.dao.CustomerDao"%>
<%@page import="semi.dao.OrderDao"%>
<%@page import="semi.vo.PointDetail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  
  	#point-table th, #point-table td {
  		border:0;
  	}
  	
  	#container{
  		width:1300px;
  		min-height: 600px;
  		margin:0 auto;
  	}
  	
  	.point-table{
  		width:1000px;
  		min-height: 500px;
    	margin: 80px auto 80px;
  	}
  	
  	
  </style>
</head>
<body>
<%@ include file="/include/uppermost-nav.jsp" %>
	<div class="container">
			<h1 class="text-center"><span style="font-size: 15px; margin-top:200px;">POINT</span></h1>
			<%
					Customer customer = (Customer) session.getAttribute("logged-in-user");
					OrderDao dao = OrderDao.getInstance();
					PointDetail pointdetail = dao.getchargeconsumePoint(customer.getNo());
					
					CustomerDao cdao=CustomerDao.getInstance();
					Customer cust = cdao.getCustomerById(customer.getNo());
			%>
			
			<p class="text-center"><%=cust.getName() %>고객님의 사용가능 적립금 금액 입니다.</p>
			
			<div class="row">
				<div class="col-xs-offset-1 col-xs-10">
					<table class="table table-bordered" id="point-table">
						<colgroup>
							<col width="20%">
							<col width="20%">
							<col width="20%">
							<col width="20%">
						</colgroup>
						<tbody>
							<tr>
								<th class="text-right">총 적립금</th>
								<td class="text-right"><%=(pointdetail != null ? pointdetail.getCustomerusePoint() - pointdetail.getUsedPoint() + pointdetail.getProductPoint() : "0")%>원</td>
								<th></th>
								<th class="text-left">미사용 적립금</th>
								<td class="text-left"><%=(pointdetail != null ? pointdetail.getProductPoint(): "0") %>원</td>
							</tr>
							<tr>
								<th class="text-right">사용가능 적립금</th>
								<td class="text-right"><%=(pointdetail != null ? pointdetail.getCustomerusePoint() : "0") %>원</td>
								<th></th>
								<th class="text-left">환불예정 적립금</th>
								<td class="text-left">0원</td>
							</tr>
							<tr>
								<th class="text-right">사용된 적립금</th>
								<td class="text-right"><%=(pointdetail != null ? pointdetail.getUsedPoint() : "0") %>원</td>
								<th></th><td></td><td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
				
			<div class="row">
				<div class="col-xs-offset-1 col-xs-10">
					<table class="table table-bordered">
						<thead>
						<%if(pointdetail != null){ %>
						
							<tr >
								<th class="text-center" style="border-left-color: white;">주문날짜</th>
								<th class="text-center">적립금</th>
								<th class="text-center">관련주문</th>
								<th class="text-center" style="border-right-color: white;">적립내용</th>
							</tr>
						</thead>
						<tbody>
						
							<tr >
								<td class="text-center" style="border-left-color: white;">2018-03-22</td>
								<td class="text-center"><%=(pointdetail != null ? pointdetail.getProductPoint(): "0") %></td>
								<td class="text-center"><a href=""></a></td>
								<td class="text-center" style="border-right-color: white;">신규회원적립금</td>
							</tr>
							
							<%} else { %>
							<tr>
								<td colspan="4" class="text-center" style="border-left-color: white; border-right-color: white;">적립금 내역이 없습니다.</td>
							</tr>
							<%} %>
						</tbody>
					</table>
				</div>
			</div>
			
			<div class="row">
				<h3><span style="">적립금 안내</span></h3>
					<ul>
						<li>
						주문으로 발생한 적립금은 배송완료 후 1일 부터 실제 사용 가능한 적립금으로 전환됩니다. 배송완료 시점으로부터 1일 동안은 미가용 적립금으로 분류됩니다.</li>
						<li>미가용 적립금은 반품, 구매취소 등을 대비한 임시 적립금으로 사용가능 적립금으로 전환되기까지 상품구매에 사용하실 수 없습니다.</li>
						<li>사용가능 적립금(총적립금 - 사용된적립금 - 미가용적립금)은 상품구매 시 바로 사용가능합니다.</li>
					</ul>
			</div>
			
		</div>
	
	

</body>
</html>
    