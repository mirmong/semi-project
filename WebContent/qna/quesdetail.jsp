<%@page import="semi.vo.Qna"%>
<%@page import="semi.dao.QnaDao"%>
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
<body>
<%@ include file="/include/uppermost-nav.jsp"%>
<%@ include file="/style/ywj/detailstyle.jsp"%>
<%
	int qno = Integer.parseInt(request.getParameter("qno"));

	QnaDao qnaDao = QnaDao.getInstance();
	
	Qna question = qnaDao.getDetailQuestion(qno);
	qnaDao.countQuestionByNo(qno);
	
%>
<div class="container col-xs-12" id="id-main-contents">
	<div id="wrap">
		<div id="container">
			<div id="contents02">
				<div
					class="xans-element- xans-board xans-board-readpackage-4 xans-board-readpackage xans-board-4 ">
					<div
						class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
						<div class="title">
							<h2>
								<font color="#555555">Q&amp;A</font>
							</h2>
							<p>상품 Q&amp;A입니다.</p>
						</div>
					</div>
					<div
						class="xans-element- xans-board xans-board-read-4 xans-board-read xans-board-4">
						<div class="boardView ">
							<table border="1" summary="">
								<caption>상품 게시판 상세</caption>
								<tbody>
									<tr>
										<th scope="row">제목</th>
										<td><%=question.getQuSubject() %></td>
									</tr>
									<tr>
										<th scope="row">작성자</th>
										<td><%=question.getCustName() %> <span class="displaynone">(ip:)</span>
										</td>
									</tr>
									<tr class="etcArea">
										<td colspan="2">
											<ul>
												<li class="date "><strong class="th">작성일</strong> <span
													class="td"><%=question.getQuCreateDateSDF() %></span></li>
												<li class="hit "><strong class="th">조회수</strong> <span
													class="td"><%=question.getQuViewcount() %></span></li>
											</ul>
										</td>
									</tr>
									<tr class="view">
										<td colspan="2">
											<div class="detail">
												<p>
													<br>
												</p>
												<p>
													<br>
												</p>
												<p>
													<br>
												</p>
												<p>
													<br>
												</p>
												<p><%=question.getQuContents() %></p>
											</div>
										</td>
									</tr>

								</tbody>
							</table>
						</div>
						<div class="btnArea ">
							<span class="left">
								<a href="/semi/qna/list.jsp">
									<img src="/semi/images/ywj/listbutton.jpg" alt="목록">
								</a>
							</span>
							<a href="/semi/qna/formdetail.jsp" class="">
								<img src="/semi/images/ywj/qnabtn.jpg" alt="답변">
							</a>
						</div>
					</div>
				</div>
			</div>
			<hr class="layout">
		</div>
		<hr class="layout">
	</div>
	</div>
	<%@ include file="/include/lowermost-footer.jsp"%>
</body>
</html>