<%@page import="semi.dao.ProductDao"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="semi.vo.CartItem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int proNo = Integer.parseInt(request.getParameter("proNo"));

	if(session.getAttribute("logged-in-user") == null) {
		response.sendRedirect("detail.jsp?pro-no="+proNo);
		return;
	}

	ProductDao productDao = ProductDao.getInstance();
	int counter = Integer.parseInt(request.getParameter("counter"));
	int custNo = Integer.parseInt(request.getParameter("custNo"));
	List<String> cloths;
	List<String> colors;
	List<String> sizes;
	List<String> qtys;
	
	List<CartItem> selectedProducts = new ArrayList<>();
	
	for (int i=1; i<=counter; i++) {
		CartItem cartItem = new CartItem();
		cartItem.setName(request.getParameter("selected-cloth"+i));
		cartItem.setColor(request.getParameter("selected-color"+i));
		cartItem.setProSize(request.getParameter("selected-size"+i));
		cartItem.setQty(Integer.parseInt(request.getParameter("qty"+i)));
		selectedProducts.add(cartItem);
	}
	
	for (CartItem cartitem : selectedProducts) {
		Map<String, Object> map = new HashMap<>();
		map.put("custNo", custNo);
		map.put("proNo", proNo);
		map.put("proQty", cartitem.getQty());
		map.put("proColor", cartitem.getColor());
		map.put("proSize", cartitem.getProSize());
		productDao.addNewCartItem(map);
	}
	
	response.sendRedirect("/semi/pay/pay.jsp");
	
%>