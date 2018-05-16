<%@page import="semi.vo.Customer"%>
<%@page import="semi.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("id");	

	CustomerDao customerDao = CustomerDao.getInstance();

	Customer customer = new Customer();	

	customerDao.deleteCustomr(id);
	
	
	session.invalidate();
	response.sendRedirect("http://localhost/semi/index.jsp");
%>