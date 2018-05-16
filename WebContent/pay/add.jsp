<%@page import="semi.vo.ShippingClass"%>
<%@page import="semi.dao.CustomerDao"%>
<%@page import="semi.vo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	Customer loggedInUser = (Customer)session.getAttribute("logged-in-user");

	String shippingClassName = request.getParameter("class-name");
	String receiverName = request.getParameter("rcv-name");
	String postcode = request.getParameter("post-code");
	String firstAddress = request.getParameter("post-first");
	String secondAddress = request.getParameter("post-second");
	String tel = request.getParameter("tel-first") + "-" + request.getParameter("tel-second") + "-" + request.getParameter("tel-third");
	int customerNo = loggedInUser.getNo();

	ShippingClass shippingClass = new ShippingClass();
	shippingClass.setCustomerNo(customerNo);
	shippingClass.setShippingClassName(shippingClassName);
	shippingClass.setReceiverName(receiverName);
	shippingClass.setPostcode(postcode);
	shippingClass.setFirstAddress(firstAddress);
	shippingClass.setSecondAddress(secondAddress);
	shippingClass.setTel(tel);
	
	CustomerDao customerDao = CustomerDao.getInstance();
	customerDao.addShippingClass(shippingClass);
	
	response.sendRedirect("http://localhost/semi/pay/addressList.jsp");
%>