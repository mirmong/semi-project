 

<%@page import="semi.vo.Customer"%>
<%@page import="semi.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String custid = request.getParameter("cust_id");
	String custpasswd = request.getParameter("cust_passwd");

	CustomerDao customerDao = CustomerDao.getInstance();
	Customer customer =  customerDao.login(custid);
	
	if(customer == null) {
		response.sendRedirect("loginform.jsp?fail=invalid");
		return;
	} 
	
	if(!customer.getPwd().equals(custpasswd)) {
		response.sendRedirect("loginform.jsp?fail=invalid");
		return;
	} 

	if(customer.getStatus().equals("탈퇴")) {
		response.sendRedirect("loginform.jsp?fail=invalid");
		return;
	} 

	
	session.setAttribute("logged-in-user",customer);
	
	response.sendRedirect("/semi/index.jsp");
	
%>
