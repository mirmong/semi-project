
<%@page import="semi.vo.Customer"%>
<%@page import="semi.dao.CustomerDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script type="text/javascript"> 

function confirmid() {
	if(document.joinForm.cust_id.value=="") {
		alter("아이디를입력하세요");
		return;
	}
	
	url = "confirmid.jsp?cust_id="+document.joinForm.cust_id.value;
	open(url,"confirm",
	"toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=300,height=200");
	
}
</script>
<%
CustomerDao customerDao = CustomerDao.getInstance();
	
	String custid = request.getParameter("cust_id");
	Customer customer = new Customer();
	customer.setId(custid);
	Customer fromcustomer1 = customerDao.login(custid);

	 if(fromcustomer1 != null) { %>
			<center>
			<br /><br />
			<h4><%=custid %>는 이미 사용중인 id 입니다</h4>
			<form id="joinForm" name="joinForm" onsubmit ="return check()" method="post"  action="idDuplicationCheck.jsp">
			<h4>다른 아이디를 입력해주세요</h4>
			<input type = "text" name="cust_id"/>
			 <input type="button" value="중복확인" onClick="confirmid()"/>
			</form>
			</center>	
	<% } else { %>
			<center>
			<br /><br />
			<h4>입력하신<%=custid %>는 사용하실 수 있는 id입니다</h4>
			<input type="button" value="사용하기" onClick="window.close()">
			</center>
	<% } 
%>
