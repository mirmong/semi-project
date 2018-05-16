<%@page import="semi.vo.Customer"%>
<%@page import="java.util.List"%>
<%@page import="semi.dao.CustomerDao"%>
<%@page import="semi.vo.PasswordHint"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	request.setCharacterEncoding("UTF-8");
	CustomerDao customerDao = CustomerDao.getInstance();
	String custid = request.getParameter("cust_id");
	Customer customers = customerDao.login(custid);
	Customer customer = new Customer();
	
	
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


	int custpasswordconfirm = Integer.parseInt(request.getParameter("custpasswordconfirm"));
	String cust_ane =  request.getParameter("cust_ane");
	
	customer.setPwd(custpassword);
	customer.setName(cust_name);
	customer.setPostcode(cust_addres);
	customer.setFirstAddress(cust_addres1);
	customer.setSecondAddress(cust_addres2);
	customer.setTel(cust_phone+"-"+cust_phone2+"-"+cust_phone3);
	customer.setEmail(cust_email+"@"+cust_email2);
	customer.setId(custid);
	
	customerDao.modifyCoustomer(customer);
	
	PasswordHint passwordHint = new PasswordHint();
	

	passwordHint.setQuestionNo(custpasswordconfirm);
	passwordHint.setAnswer(cust_ane);
	passwordHint.setCustomerNo(customers.getNo());

	customerDao.modifyHint(passwordHint);
	
	
	

	
	session.setAttribute("logged-in-user",customer);
	response.sendRedirect("/semi/index.jsp");
%>