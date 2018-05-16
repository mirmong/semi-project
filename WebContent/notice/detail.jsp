<%@page import="semi.vo.Notice"%>
<%@page import="semi.dao.NoticeDao"%>
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
	int no = Integer.parseInt(request.getParameter("nno"));
	
	NoticeDao noticeDao = NoticeDao.getInstance();
	noticeDao.noticeCountByNo(no);
	Notice notice = noticeDao.getDetailNotice(no);
	Notice prev = noticeDao.getPrevNotice(no);
	Notice next = noticeDao.getNextNotice(no);
%>
<div class="container col-xs-12" id="id-main-contents">
<div id="wrap">
	<div id="container">
		<div id="contents02">
			<div class="xans-element- xans-board xans-board-readpackage-1002 xans-board-readpackage xans-board-1002 ">
				<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 ">
					<div class="title">
						<h2><font color="#555555">notice</font></h2>
						<p>공지사항입니다.</p>
					</div>
				</div>
				<!-- 글 내용-->
				<div class="xans-element- xans-board xans-board-read-1002 xans-board-read xans-board-1002">
					<div class="boardView ">
						<table border="1" summary="">
							<caption>게시판 상세</caption>
							<tbody>
								<tr>
									<th scope="row">subject</th>
									<td><%=notice.getSubject() %></td>
								</tr>
								<tr>
									<th scope="row">name</th>
									<td><%=notice.getAdminId() %><span class="displaynone">(ip:)</span></td>
								</tr>
								<tr class="etcArea">
									<td colspan="2">
										<ul>
											<li class="date "><strong class="th">date</strong> <span
												class="td"><%=notice.getCreateDateSDF() %></span></li>
											<li class="hit "><strong class="th">조회수</strong> <span
												class="td"><%=notice.getViewCount() %></span></li>
										</ul>
									</td>
								</tr>
								<tr class="view">
									<td colspan="2">
										<div class="detail">
											<p align="left">
												<br>
											</p>
											<p align="left"><%=notice.getContents() %></p>
										</div>
									</td>
								</tr>

							</tbody>
						</table>
					</div>
					<div class="btnArea ">
						<span class="left"><a href="/semi/notice/list.jsp"><img src="/semi/images/ywj/listbutton.jpg" alt="목록"></a></span>
					</div>
				</div>
			</div>
			<div id="pnlist"
				class="xans-element- xans-board xans-board-movement-1002 xans-board-movement xans-board-1002 ">
				<ul>
				<%
					if (prev != null) {
				%>
					<li class="prev ">
						<strong>이전글</strong><a href="/semi/notice/detail.jsp?nno=<%=prev.getNo() %>"><%=prev.getSubject() %></a>
					</li>
				<%
					}
					if (next != null) {
				%>
					<li class="next ">
						<strong>다음글</strong><a href="/semi/notice/detail.jsp?nno=<%=next.getNo() %>"><%=next.getSubject() %></a>
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