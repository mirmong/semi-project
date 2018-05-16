<%@page import="semi.vo.Customer"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="semi.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Customer customer = (Customer) session.getAttribute("logged-in-user");
	int custno  = customer.getNo();
	int productNo = Integer.parseInt(request.getParameter("proNo"));
	CustomerDao customerDao = CustomerDao.getInstance();	
	  Map<String, Object> map = new HashMap<String, Object>();
	  map.put("productNo",productNo ); 
	  map.put("custno", custno);
	 
	
	
	customerDao.deleteCartItemsByProductNo(map);
	response.sendRedirect("cart.jsp");
%>