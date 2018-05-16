<%@page import="semi.vo.ShippingClass"%>
<%@page import="semi.vo.PasswordHint"%>
<%@page import="semi.vo.Customer"%>
<%@page import="semi.dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	CustomerDao customerDao = CustomerDao.getInstance();
	
	Customer customer = new Customer();
	PasswordHint passwordHint = new PasswordHint();
	ShippingClass shippingClass = new  ShippingClass();
	
	String custid = request.getParameter("cust_id");
	String custpassword = request.getParameter("cust_password");

	String cust_name = request.getParameter("cust_name");
	String cust_addres = request.getParameter("cust_addres");
	String cust_addres1 = request.getParameter("cust_addres1");
	String cust_addres2 = request.getParameter("cust_addres2");
	String cust_phone = request.getParameter("cust_phone");
	String cust_phone2 = request.getParameter("cust_phone2");
	String cust_phone3 = request.getParameter("cust_phone3");	
	String cust_email = request.getParameter("cust_email");
	String cust_email2 = request.getParameter("cust_email2");
	

	int custpasswordconfirm = Integer.parseInt( request.getParameter("custpasswordconfirm"));
	String cust_ane =  request.getParameter("cust_ane");
	customer.setId(custid);
	customer.setPwd(custpassword);
	customer.setName(cust_name);
	customer.setPostcode(cust_addres);
	customer.setFirstAddress(cust_addres1);
	customer.setSecondAddress(cust_addres2);
	customer.setTel(cust_phone+"-"+cust_phone2+"-"+cust_phone3);
	customer.setEmail(cust_email+"@"+cust_email2);

	customerDao.addCustomer(customer);
	
	passwordHint.setQuestionNo(custpasswordconfirm);
	passwordHint.setAnswer(cust_ane);
	
	customerDao.addCustomerHint(passwordHint);
	
	shippingClass.setReceiverName(custid);
	shippingClass.setPostcode(cust_addres);
	shippingClass.setFirstAddress(cust_addres1);
	shippingClass.setSecondAddress(cust_addres2);
	shippingClass.setTel(cust_phone+"-"+cust_phone2+"-"+cust_phone3);
	shippingClass.setMessage("");
	shippingClass.setShippingClassName(cust_name);
	
	customerDao.addShippingClassByCustomerNo(shippingClass);
	
	session.setAttribute("logged-in-user",customer);
	response.sendRedirect("join_result.jsp");

	
%>

