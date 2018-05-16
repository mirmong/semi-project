<%@page import="semi.dao.CustomerDao"%>
<%@page import="semi.vo.Customer"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	Customer customer = (Customer) session.getAttribute("logged-in-user");
	int custNo  = customer.getNo();
	int productNo = Integer.parseInt(request.getParameter("no"));
	int qty = Integer.parseInt(request.getParameter("qty"));


	CustomerDao customerDao = CustomerDao.getInstance();
	Map<String, Object> map = new HashMap<String, Object>();
	map.put("custNo", custNo);
	map.put("qty", qty); 
	map.put("productNo", productNo); 
	
	customerDao.CartItemsQtyUpdate(map);
	response.sendRedirect("cart.jsp");
%>