<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
</head>
<%
	Date date = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	String newDate = formatter.format(date);
	String pno = request.getParameter("pno");	// 페이징 처리용
	int mode = Integer.parseInt(request.getParameter("mode")); // 주문내역조회인지? 취소내역 조회인지?
	
	final int rows = 5;
	//int currentPage = Integer.parseInt(request.getParameter("pno"));
	//int records = 총 레코드수 가져오는 DAO.메소드();
	//int pages = (int)Math.ceil((double)records/rows);
	//int beginIndex = (currentPage-1) * rows + 1;
	//int endIndex = currentPage*rows;
%>
<style>
	#id-main-contents {
		padding-top: 400px;
	}
	.search-line {
		margin-top: 80px;
		border-bottom: solid;
		border-bottom-color: #e6e6e6;
	}
	.date-select-box {
		
		margin-top: 30px;
		border: solid;
		border-color: #e6e6e6;
		margin-bottom: 30px;
	}
	.form-group {
		padding: 0px;
		margin: 15px 0px 15px 20px;
	}
	.images {
		width: 100px;
		height: 100px;
	}
</style>
<script type="text/javascript">
	
	function getStringDate(day) {
		var year = day.getFullYear();
		var month = day.getMonth() +1;
		month = (month<10 ? "0" + month : month);
		var date = day.getDate();
		date = (date<10 ? "0" + date : date);
		
		var dateText = year + "-" + month + "-" + date;
		return dateText;
	}
	
	function dayFrom(event) {
		
		event.preventDefault();
		var howLong = event.target.innerHTML;
		
		var fromDate = new Date();
		var toDate = new Date();
		
		if ("오늘" == howLong) {
			document.getElementById("from-date").value = getStringDate(fromDate);
			
		} else if ("1주일" == howLong) {
			fromDate.setDate(fromDate.getDate()-7);
			var oneWeekAgo = getStringDate(fromDate);
			document.getElementById("from-date").value = oneWeekAgo;
			document.getElementById("to-date").value = getStringDate(toDate);	
			
		} else if ("1개월" == howLong) {
			fromDate.setDate(fromDate.getMonth()-1);
			var oneMonthAgo = getStringDate(fromDate);
			document.getElementById("from-date").value = oneMonthAgo;
			document.getElementById("to-date").value = getStringDate(toDate);
			
		} else if ("3개월" == howLong) {
			fromDate.setDate(fromDate.getMonth()-3);
			var threeMonthsAgo = getStringDate(fromDate);
			document.getElementById("from-date").value = threeMonthsAgo;
			document.getElementById("to-date").value = getStringDate(toDate);
			
		} else if ("6개월" == howLong) {
			fromDate.setDate(fromDate.getMonth()-6);
			var sixMonthsAgo = getStringDate(fromDate);
			document.getElementById("from-date").value = sixMonthsAgo;
			document.getElementById("to-date").value = getStringDate(toDate);
		}
	}
</script>
<body>
<%@ include file="../../include/uppermost-nav.jsp" %>

<div class="container" id="id-main-contents">
	<div>
		<h1 class="text-center" style="font-size: large;">ORDER LIST</h1>
		<p class="text-center">주문내역 조회</p>
	</div>
	
	<div class="row search-line">
		<a href="" style="<%=mode==1 ? "font-weight: bold; color: black;" : "color: #808080"%>">주문내역조회 (0)</a>
		<span> | </span>
		<a href="" style="<%=mode==2 ? "font-weight: bold; color: black;" : "color: #808080"%>">취소/반품/교환 내역(0)</a>
	</div>
	
	<div class="date-select-box">
		<div class="row">
			<form method="post" action="">
				<div class="form-group col-md-3" style="width: 250px;">
					<div class="btn-group">
						<button class="btn btn-default btn-xs" onclick="dayFrom(event);">오늘</button>
						<button class="btn btn-default btn-xs" onclick="dayFrom(event);">1주일</button>
						<button class="btn btn-default btn-xs" onclick="dayFrom(event);">1개월</button>
						<button class="btn btn-default btn-xs" onclick="dayFrom(event);">3개월</button>
						<button class="btn btn-default btn-xs" onclick="dayFrom(event);">6개월</button>
					</div>
				</div>
				<div class="form-group col-md-4">
					<input type="date" value="<%=newDate%>" name="from-date" id="from-date"/>
					<span> ~ </span>
					<input type="date" value="<%=newDate%>" name="to-date" id="to-date"/>
				</div>
				<div class="form-group col-md-3">
					<input type="submit" class="btn btn-sm" style="background-color: black; color: white;" value="조회"/>
				</div>
			</form>
		</div>
	</div>
	
	<div class="row" style="margin-bottom: 30px;">
		<ul>
			<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
			<li>주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
		</ul>
	</div>
	
	<div class="row text-left">
		<p>ORDER PRODUCT INFO</p>
		<table class="table table-hover" style="border: solid; border-color: #e6e6e6;">
			<colgroup>
				<col width="10%"/>
				<col width="10%"/>
				<col width="40%"/>
				<col width="10%"/>
				<col width="10%"/>
				<col width="10%"/>
				<col width="10%"/>
			</colgroup>
			<thead>
				<tr>
					<th>주문일자</th>
					<th>이미지</th>
					<th>상품정보</th>
					<th>수량</th>
					<th>상품구매금액</th>
					<th>주문처리상태</th>
					<th>취소/교환/반품</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>2018-02-02</td>
					<td><img src="/semi/images/sjh/cloth.png" class="images"/></td>
					<td>뿌지직</td>
					<td>2</td>
					<td>30000</td>
					<td>완료</td>
					<td>ㄴㄴ</td>
				</tr>
				<tr>
					<td>2018-03-03</td>
					<td><img src="/semi/images/sjh/cloth.png" class="images"/></td>
					<td>ㅁㄴㅇㅁㅇ</td>
					<td>4</td>
					<td>30000</td>
					<td>완료</td>
					<td>ㅇㅇ</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="text-center" style="margin-bottom: 100px;">
		<ul class="pagination">
			<!--<li class="스크립틀릿currentPage==index ? "active" : ""스크립틀릿"><a href="detail.jsp?pno=스크립틀릿index스크립틀릿">index</a></li>-->
			<li class="active"><a href="detail.jsp?pno=1">1</a></li>
			<li class=""><a href="detail.jsp?pno=1">2</a></li>
			<li class=""><a href="detail.jsp?pno=1">3</a></li>
		</ul>
	</div>
</div>
<%@ include file="../../include/lowermost-footer.jsp" %>
</body>
</html>