<%@page import="semi.vo.Event"%>
<%@page import="semi.dao.EventDao"%>
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
</head>
<style>
	#pnlist li {
		font-size: 10px;
	}
</style>
<body>
<%@ include file="/include/uppermost-nav.jsp" %>
<%@ include file="/style/ywj/detailstyle.jsp" %>
<%
	int no = Integer.parseInt(request.getParameter("eno"));
	
	EventDao eventDao = EventDao.getInstance();
	eventDao.eventCountByNo(no);
	Event event = eventDao.getDetailEvent(no);
	Event prev = eventDao.getPrevEvent(no);
	Event next = eventDao.getNextEvent(no);
	
	
%>
<div class="container col-xs-12" id="id-main-contents">
<div id="wrap">
	<div id="container">
		<div id="contents02">
			<div class="xans-element- xans-board xans-board-readpackage-8 xans-board-readpackage xans-board-8 ">
				<div class="xans-element- xans-board xans-board-title-8 xans-board-title xans-board-8 ">
					<div class="title">
						<h2><font color="#333333">EVENT</font></h2>
						<p>이벤트</p>
					</div>
				</div>
					<div
						class="xans-element- xans-board xans-board-read-8 xans-board-read xans-board-8">
						<div class="boardView ">
							<table border="1" summary="">
								<caption>게시판 상세</caption>
								<tbody>
									<tr>
										<th scope="row">제목</th>
										<td><%=event.getSubject() %></td>
									</tr>
									<tr>
										<th scope="row">작성자</th>
										<td><%=event.getAdminName() %> <span class=""></span>
										</td>
									</tr>
									<tr class="etcArea">
										<td colspan="2">
											<ul>
												<li class="date "><strong class="th">작성일</strong> <span
													class="td"><%=event.getCreateDateSDF() %></span></li>
												<li class="hit "><strong class="th">조회수</strong> <span
													class="td"><%=event.getViewCount() %></span></li>
											</ul>
										</td>
									</tr>
									<tr class="view">
										<td colspan="2">
											<div class="detail">
												<img width="600px;" height="425px;"
													src="/semi/images/ywj/<%=event.getBanner() %>"
													border="0" alt=""><br>
												<p>
													<br>
												</p>
												<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
													&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
													&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
													&nbsp;&nbsp; <%=event.getContents() %></p>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="btnArea ">
							<span class="left"><a
								href="/semi/event/list.jsp"><img
									src="/semi/images/ywj/listbutton.jpg" alt="목록"></a></span>
						</div>
					</div>
			</div>
			<div id="pnlist"
				class="xans-element- xans-board xans-board-movement-8 xans-board-movement xans-board-8 ">
				<ul>
					<%
						if (prev != null) {
					%>
					<li class="prev">
						<strong>이전글</strong><a href="/semi/event/detail.jsp?eno=<%=prev.getNo() %>"><%=prev.getSubject() %></a>
					</li>
					<%
						}
						if (next != null) {
					%>
					<li class="next">
						<strong>다음글</strong><a href="/semi/event/detail.jsp?eno=<%=next.getNo() %>"><%=next.getSubject() %></a>
					</li>
					<%
						}
					%>
				</ul>
			</div>
		</div>
		<hr class="layout">
	</div>
	<hr class="layout">
</div>
</div>
<%@ include file="/include/lowermost-footer.jsp" %>
</body>
</html>