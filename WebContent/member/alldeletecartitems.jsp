<%@page import="semi.dao.CustomerDao"%>
<%@page import="semi.vo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
Customer customer = (Customer) session.getAttribute("logged-in-user");
int custno  = customer.getNo();
CustomerDao customerDao = CustomerDao.getInstance();
customerDao.AllDeleteCartItems(custno);
response.sendRedirect("cart.jsp");


%>