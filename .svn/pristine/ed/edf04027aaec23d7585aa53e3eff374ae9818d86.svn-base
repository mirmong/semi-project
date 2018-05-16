<%@page import="semi.vo.PasswordHint"%>
<%@page import="java.util.List"%>
<%@page import="semi.vo.Customer"%>
<%@page import="semi.dao.CustomerDao"%>
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

	
<%

	String Email = request.getParameter("cust_email");
	String name = request.getParameter("cust_name");
	String custid = request.getParameter("cust_id");
	CustomerDao customerDao = CustomerDao.getInstance();
	Customer customer  =  customerDao.login(custid);
	
	if(customer == null ) {
%>
			<script>
			alert("해당회원이존재하지않습니다");
			 history.go(-1)
			</script>		
<%
	return ;
	}
	else { %>
<style type="text/css">
.my-box { border:1px solid; padding:10px;   }
</style>			
</head>
<jsp:include page="/include/uppermost-nav.jsp" />		
	<body>
	
		<div id="wrap">    
			<div id="container" align="center">    
				<div id="contents02">
					<div class="titleArea" id="id-main-contents">
					
    <h2>Find ID</h2>
    <p>아이디 찾기</p>
		</div>
		<div class="my-box">
			<div class="xans-element- xans-member xans-member-findidresult"><div class="">
        <p class="desc">아이디 찾기가 완료 되었습니다.</p>
        <div class="memberInfo">
            <p class="info">저희 쇼핑몰를 이용해주셔서 감사합니다.<br/>다음정보로 가입된 아이디가 총 <span>1</span>개 있습니다.</p>
            <ul>
				<li>이름 :<strong><span class="authssl_name"><%=customer.getName() %></span></strong></li>
                <li>이메일 :<strong> <span class="authssl_searchInfo"><%=customer.getEmail() %></span></strong></li>
                <li>비밀번호 :<strong> <span class="authssl_searchInfo"><%=customer.getPwd() %></span></strong></li>
                <li>고객님 즐거운 쇼핑 하세요!</li>
            </ul>
            </div>
</div>
<%
}
%>

        <p class="copy">
            고객님의 비밀번호 찾기가 성공적으로 이루어졌습니다. 항상 고객님의 <br/>
            즐겁고 편리한 쇼핑을 위해 최선의 노력을 다하는 쇼핑몰이 되도록 하겠습니다.
        </p>
        <p class="button">
            <a href="loginform.jsp" class="">로그인</a>
    

    </div>
</div>
        </div><hr class="layout"/></div><hr class="layout"/></div>
<jsp:include page="/include/lowermost-footer.jsp" /> 
</body>

</html>
