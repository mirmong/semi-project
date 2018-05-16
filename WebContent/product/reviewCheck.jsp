<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="semi.vo.Review"%>
<%@page import="semi.dao.ReviewDao"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="semi.vo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String forWhat = request.getParameter("check");
	
	Gson gson = new Gson();

	if ("login".equals(forWhat)) {
		Customer loginedUser = (Customer)session.getAttribute("logged-in-user");
	
		String jsonText = gson.toJson(loginedUser);
		out.write(jsonText);
	}
	if ("already".equals(forWhat)) {
		int proNo = Integer.parseInt(request.getParameter("proNo"));
		int custNo = Integer.parseInt(request.getParameter("custNo"));
		
		ReviewDao reviewDao = ReviewDao.getInstance();
		Map<String, Object> map = new HashMap<>();
		map.put("proNo", proNo);
		map.put("custNo", custNo);
		
		Review review = reviewDao.getReviewByProNoAndCustId(map);	
		if (review != null) {
			String jsonText = gson.toJson(review);
			out.write(jsonText);
		}
	}
%>