<%@page import="semi.dao.CustomerDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int sno = Integer.parseInt(request.getParameter("sno"));
	System.out.println(sno);

	CustomerDao customerDao = CustomerDao.getInstance();
	
	customerDao.delShippingClass(sno);
	
	out.write("{\"sno\":"+sno+"}");
%>