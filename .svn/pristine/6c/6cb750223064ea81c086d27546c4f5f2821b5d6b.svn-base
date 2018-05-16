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
<%
	request.setCharacterEncoding("utf-8");

	int qno = Integer.parseInt(request.getParameter("qno"));
	String pass = request.getParameter("ques-password");
	
	QnaDao qnaDao = QnaDao.getInstance();
	
	Qna qnoPass = qnaDao.getPassword(qno);
	
	if (pass.equals(qnoPass.getPassword())) {
		response.sendRedirect("/semi/qna/quesdetail.jsp?qno="+qno);
		
	} else {
%>
<script>
		alert("비밀번호가 틀렸습니다.");
		history.go(-1);
</script>
<%
	}
%>

</body>
</html>
