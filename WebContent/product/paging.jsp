<%@page import="semi.dao.CustomerDao"%>
<%@page import="semi.vo.Customer"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="semi.dao.ProductDao"%>
<%@page import="semi.vo.ProductReviews"%>
<%@page import="semi.vo.ProductQuestions"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String orderBy = request.getParameter("orderBy");
	int qnaPno = Integer.parseInt(request.getParameter("qnaPno"));
	int reviewPno = Integer.parseInt(request.getParameter("reviewPno"));
	int proNo = Integer.parseInt(request.getParameter("proNo"));
	String isPhoto = request.getParameter("isPhoto");

	ProductDao productDao = ProductDao.getInstance();
	CustomerDao customerDao = CustomerDao.getInstance();
	List<ProductQuestions> questions = productDao.getProductQuestionsByProNo(proNo);
	List<ProductReviews> reviews = productDao.getProductReviewsByProNoOrderByNew(proNo);
	
	final int rows = 5;
	
	int currentQnaPage = qnaPno;
	int qnaRecords = questions.size();
	int qnaPages = (int)Math.ceil((double)qnaRecords/rows);
	int qnaBeginIndex = (currentQnaPage-1) * rows + 1;
	int qnaEndIndex = currentQnaPage*rows;
	
	int currentReviewPage = reviewPno;
	int reviewRecords = reviews.size();
	int reviewPages = (int)Math.ceil((double)reviewRecords/rows);
	int reviewBeginIndex = (currentReviewPage-1) * rows + 1;
	int reviewEndIndex = currentReviewPage*rows;
	
	Map<String, Object> questionMap = new HashMap<>();
	questionMap.put("proNo", proNo);
	questionMap.put("beginIndex", qnaBeginIndex);
	questionMap.put("endIndex", qnaEndIndex);
	List<ProductQuestions> questionsWithRange = productDao.getProductQuestionsByProNoAndRange(questionMap);
	
	List<ProductReviews> reviewsWithRange = null;
	Customer cust = new Customer();
	
	if ("createDate".equals(orderBy)) {
		Map<String, Object> reviewMap = new HashMap<>();
		reviewMap.put("proNo", proNo);
		reviewMap.put("beginIndex", reviewBeginIndex);
		reviewMap.put("endIndex", reviewEndIndex);
		reviewsWithRange = productDao.getProductReviewsByProNoOrderByNewAndRange(reviewMap);
			for (ProductReviews review : reviewsWithRange) {
				cust = customerDao.getCustomerByReviewNo(review.getReviewNo());
			}
		if ("yes".equals(isPhoto)) {
			reviewsWithRange = productDao.getProductReviewsByProNoOrderByNewAndRangeAndWithPhoto(reviewMap);
				for (ProductReviews review : reviewsWithRange) {
					cust = customerDao.getCustomerByReviewNo(review.getReviewNo());
				}
		}
	} else if ("grade".equals(orderBy)) {
		Map<String, Object> reviewMap = new HashMap<>();
		reviewMap.put("proNo", proNo);
		reviewMap.put("beginIndex", reviewBeginIndex);
		reviewMap.put("endIndex", reviewEndIndex);
		reviewsWithRange = productDao.getProductReviewsByProNoOrderByGradeAndRange(reviewMap);
			for (ProductReviews review : reviewsWithRange) {
				cust = customerDao.getCustomerByReviewNo(review.getReviewNo());
			}
		if ("yes".equals(isPhoto)) {
			reviewsWithRange = productDao.getProductReviewsByProNoOrderByGradeAndRangeAndWithPhoto(reviewMap);
			for (ProductReviews review : reviewsWithRange) {
				cust = customerDao.getCustomerByReviewNo(review.getReviewNo());
			}
		}
	}
	String orderByStr = "";
	if ("createDate".equals(orderBy)) {
		orderByStr = "최신순";
	} else if ("grade".equals(orderBy)) {
		orderByStr = "평점순";
	}
	String photoStr = "";
	if ("yes".equals(isPhoto)) {
		photoStr = "이 상품의 포토리뷰 모아보기◀";
	} else if ("no".equals(isPhoto)) {
		photoStr = "이 상품의 포토리뷰 모아보기";
	}
	Map<String, Object> map = new HashMap<>();
	map.put("questionsWithRange", questionsWithRange);
	map.put("reviewsWithRange", reviewsWithRange);
	map.put("customer", cust);
	map.put("qnaPages", qnaPages);
	map.put("reviewPages", reviewPages);
	map.put("orderByStr", orderByStr);
	map.put("photoStr", photoStr);
	Gson gson = new Gson();
	String jsonText = gson.toJson(map);
	out.write(jsonText);
%>