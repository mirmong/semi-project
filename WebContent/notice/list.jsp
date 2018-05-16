<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="semi.vo.Notice"%>
<%@page import="java.util.List"%>
<%@page import="semi.dao.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
  <title>Bootstrap Template</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
  	th {
  	text-align: center;
  	}
  	#serach-box {
  	width: 43px;
  	height: 24px;
  	}
</style>

<body>
<%@ include file="/include/uppermost-nav.jsp" %>
<%@ include file="/style/ywj/liststyle.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	NoticeDao noticeDao = NoticeDao.getInstance();
	List<Notice> notices = new ArrayList<>();
	
	final int rows = 10;
	String current = request.getParameter("pageno");
	if (current == null) {
		current = "1";
	}
	int currentPage = Integer.parseInt(current);
	int records;
	int pages = 0;
	int beginIndex = (currentPage -1) * rows + 1;
	int endIndex = currentPage * rows;
	
	Map<String, Object> indexRange = new HashMap<>();
	indexRange.put("begin", beginIndex);
	indexRange.put("end", endIndex);
	
	String keyword = request.getParameter("keyword");
	System.out.println(keyword);
			
	if (keyword == null || "null".equals(keyword)) {
		records = noticeDao.getNoticeCounts();
		pages = (int)Math.ceil((double)records/rows);
		
		notices = noticeDao.getNoticeByRange(indexRange);
		
	} else if ("subject".equals(request.getParameter("search_key"))) {
		keyword = keyword.trim();
		records = noticeDao.getSearchNoticeCountsBySubject(keyword);
		pages = (int)Math.ceil((double)records/rows);
		
		indexRange.put("keyword", keyword);
		
		notices = noticeDao.getSearchNoticeBySubject(indexRange);
		
	} else if ("writer_name".equals(request.getParameter("search_key"))) {
		keyword = keyword.trim();
		records = noticeDao.getSearchNoticeCountsByName(keyword);
		pages = (int)Math.ceil((double)records/rows);
		
		indexRange.put("keyword", keyword);
		
		notices = noticeDao.getSearchNoticeByName(indexRange);
	}
	
	
%>
<div class="container col-xs-12" id="id-main-contents">
<div id="wrap">
	<div id="container">
		<div id="contents02">
			<div class="xans-element- xans-board xans-board-listpackage-1002 xans-board-listpackage xans-board-1002">
				<div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002">
					<div class="title">
						<h2><font color="#555555">notice</font></h2>
						<p>공지사항입니다.</p>
					</div>
					<div class="boardSort">
						<span class="xans-element- xans-board xans-board-replysort-1002 xans-board-replysort xans-board-1002"></span>
					</div>
					<div class="boardList">
						<table border="1">
							<caption>게시판 목록</caption>
							<colgroup class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002 "><col style="width:70px;">
								<col style="width:135px;" class="displaynone">
								<col style="width:auto;">
								<col style="width:84px;">
								<col style="width:80px;" class="">
								<col style="width:55px;" class="">
								<col style="width:55px;" class="displaynone">
								<col style="width:80px;" class="displaynone">
							</colgroup>
							<thead class="xans-element- xans-board xans-board-listheader-1002 xans-board-listheader xans-board-1002">
								<tr style=" ">
									<th scope="col"> no</th>
									<th scope="col" class="displaynone">카테고리</th>
									<th scope="col">subject</th>
									<th scope="col">name</th>
									<th scope="col">date</th>
									<th scope="col">조회</th>
									<th scope="col" class="displaynone">추천</th>
									<th scope="col" class="displaynone">평점</th>
								</tr>
							</thead>
							<tbody class="xans-element- xans-board xans-board-notice-1002 xans-board-notice xans-board-1002 notice">
								<tr style="background-color: #FFFFFF; color: #555555;" class="xans-record-">
									<td>공지</td>
									<td class="displaynone"></td>
									<td class="subject">
										<a href="#" style="color: red;">테스트랑께</a>
										<span class="comment"></span>
									</td>
									<td>아구몬</td>
									<td class="txtLess">2000-12-31</td>
									<td class="txtLess">56</td>
									<td class="txtLess displaynone">0</td>
									<td class="displaynone">
										<img src="" alt="0점">
									</td>
								</tr>
							</tbody>
							<tbody class="xans-element- xans-board xans-board-list-1002 xans-board-list xans-board-1002">
								<%
									for (Notice notice : notices) {
								%>
								<tr style="background-color: #FFFFFF; color: #555555;" class="xans-record-">
									<td><%=notice.getNo() %></td>
									<td class="displaynone"></td>
									<td class="subject">
										<a href="/semi/notice/detail.jsp?nno=<%=notice.getNo() %>" style="color: #555555;">
											<%=notice.getSubject() %>
										</a>
										<span class="comment"></span>
									</td>
									<td><%=notice.getAdminId() %></td>
									<td class="txtLess"><%=notice.getCreateDateSDF() %></td>
									<td class="txtLess"><%=notice.getViewCount() %></td>
									<td class="txtLess displaynone">0</td>
									<td class="displaynone">
										<img src="" alt="0점">
									</td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
					<div class="xans-element- xans-board xans-board-buttonlist-1002 xans-board-buttonlist xans-board-1002 displaynone">
						<a href="#" class="displaynone boardwritebtn">WRITE</a>
					</div>
				</div>
				<div class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002">
					<p>
						<a href="/semi/notice/list.jsp?pageno=<%=currentPage-1 %>">
							<img src="/semi/images/ywj/left1.jpg" alt="이전 페이지">
						</a>
					</p>
					<ol>
					<%
						for (int index=1; index<=pages; index++) {
					%>
						<li class="xans-record-">
							<a href="/semi/notice/list.jsp?pageno=<%=index %>" class="this"><%=index %></a>
						</li>
					<%
						}
					%>
					</ol>
					<p>
						<a href="/semi/notice/list.jsp?pageno=<%=currentPage+1 %>">
							<img src="/semi/images/ywj/right1.jpg" alt="다음 페이지">
						</a>
					</p>
				</div>
					<form id="boardSearchForm" name="" action="/semi/notice/list.jsp?pageno=1" method="post">
						<input id="board_no" name="board_no" value="1" type="hidden">
						<input id="page" name="page" value="1" type="hidden"> <input
							id="board_sort" name="board_sort" value="" type="hidden">
						<div
							class="xans-element- xans-board xans-board-search-1002 xans-board-search xans-board-1002 ">
							<fieldset class="boardSearch">
								<legend>게시물 검색</legend>
								<p>
									<select id="search_date" name="search_date">
										<option value="week">일주일</option>
										<option value="month">한달</option>
										<option value="month3">세달</option>
										<option value="all">전체</option>
									</select>
									<select id="search_key" name="search_key">
										<option value="subject">제목</option>
										<option value="writer_name">글쓴이</option>
									</select>
									<input style="height: 24px;" id="search" name="keyword" class="inputTypeText" type="text">
									<input type="submit" value="search" class="boardsecrshbtn" id="serach-box">
								</p>
							</fieldset>
						</div>
					</form>
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