<%@page import="semi.dao.ReviewDao"%>
<%@page import="semi.vo.Review"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String saveDirectory = application.getRealPath("images/customer/reviewPic");
	int maxUploadSize = 1024*1024*10;
	
	MultipartRequest mr = new MultipartRequest (request, saveDirectory, maxUploadSize, "UTF-8");
	int proNo = Integer.parseInt(mr.getParameter("review-product-no"));
	int custNo =  Integer.parseInt(mr.getParameter("review-customer-no"));
	String reviewContent = mr.getParameter("review-textarea");
	String reviewImg = mr.getParameter("picture");
	double grade =  Integer.parseInt(mr.getParameter("grade"));
	int custheight = Integer.parseInt(mr.getParameter("review-tall"));
	int custWeight = Integer.parseInt(mr.getParameter("review-weight"));
	String custSize = mr.getParameter("review-usual-size");
	
	if ("not".equals(custSize)) {
		response.sendRedirect("detail.jsp?pro-no="+proNo+"&qna-pno=1&review-pno=1");
		return;
	}
	Review review = new Review();
	review.setProNo(proNo);
	review.setCustNo(custNo);
	review.setReviewContent(reviewContent);
	review.setGrade(grade);
	review.setReviewImg(reviewImg);
	review.setCustheight(custheight);
	review.setCustWeight(custWeight);
	review.setCustSize(custSize);
	
	ReviewDao reviewDao = ReviewDao.getInstance();
	reviewDao.addNewReview(review);
	
	response.sendRedirect("detail.jsp?pro-no="+proNo+"&qna-pno=1&review-pno=1");
%>