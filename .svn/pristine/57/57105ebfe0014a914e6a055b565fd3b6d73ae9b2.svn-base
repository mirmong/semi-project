<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="semi.vo.AdminComment"%>
<%@page import="java.util.List"%>
<%@page import="semi.dao.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int reviewNo = Integer.parseInt(request.getParameter("reviewNo"));
	
	ReviewDao reviewDao = ReviewDao.getInstance();
	Map<String, Object> map = new HashMap<>();
	map.put("reviewNoOne", reviewNo);
	map.put("reviewNoTwo", reviewNo);
	
	
	List<AdminComment> adminComments = reviewDao.getAdminCommentInfoByReviewNo(map);
	
	Gson gson = new Gson();
	String jsontext = gson.toJson(adminComments);
	out.write(jsontext);
%>