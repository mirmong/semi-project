<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int qty = Integer.parseInt(request.getParameter("qty"));
	
	Gson gson = new Gson();
	String jsonText = gson.toJson(qty);
	out.write(jsonText);
%>