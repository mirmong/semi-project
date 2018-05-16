<%@page import="semi.dao.PointDao"%>
<%@page import="semi.vo.PointDetail"%>
<%@page import="semi.vo.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="semi.vo.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="semi.dao.CustomerDao"%>
<%@page import="semi.vo.OrderDetail"%>
<%@page import="semi.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Customer loggedInUser = (Customer)session.getAttribute("logged-in-user");
	int cno = 0;
	if(loggedInUser != null){
		cno = loggedInUser.getNo();
	} else {
		response.sendRedirect("/semi/member/loginform.jsp");
		return;
	}

	int usePoint = Integer.parseInt(request.getParameter("use-point"));
	//System.out.println(usePoint);
	int savePoint = Integer.parseInt(request.getParameter("save-point"));
	//System.out.println(savePoint);
	
	String[] temp = request.getParameterValues("chk");
	OrderDao orderDao = OrderDao.getInstance();
	int orderNo = orderDao.getOrderSeq();
	OrderDetail orderDetail = new OrderDetail();
	
	orderDetail.setOrderNo(orderNo);
	orderDetail.setCustomerNo(cno);
	
	orderDao.addOrder(orderDetail);

	CustomerDao customerDao = CustomerDao.getInstance();
	List<CartItem> cartItems = new ArrayList<>();
	
	PointDao pointDao = PointDao.getInstance();
	
	
	for(String t : temp){
		Map<String, Object> map = new HashMap<>();
		map.put("cno", cno);
		map.put("t", t);
		
		CartItem item = orderDao.getCartItemByMap(map);
		cartItems.add(item);
	}
		
	for (CartItem cartItem : cartItems) {
			
		OrderDetail orderDetail2 = new OrderDetail();
		
		orderDetail2.setOrderNo(orderNo);
		orderDetail2.setProductNo(cartItem.getNo());
		orderDetail2.setOrderQty(cartItem.getQty());
		orderDetail2.setProductColor(cartItem.getColor());
		orderDetail2.setProductSize(cartItem.getProSize());
			
		orderDao.addOrderDetail(orderDetail2);
		orderDao.deleteCartItem(cartItem.getNo());
	}
	
	PointDetail spoint = new PointDetail();
	spoint.setCustNo(cno);
	spoint.setOrderNo(orderNo);
	spoint.setChargeAmount(savePoint);
	
	pointDao.savePointHistory(spoint);
	
	Map<String, Object> supoint = new HashMap<>();
	supoint.put("cno", cno);
	supoint.put("point", savePoint);
	
	pointDao.savePointByCustomer(supoint);
	
	
	PointDetail upoint = new PointDetail();
	upoint.setCustNo(cno);
	upoint.setOrderNo(orderNo);
	upoint.setConsumeAmount(usePoint);
	
	pointDao.usePointHistory(upoint);
	
	Map<String, Object> cupoint = new HashMap<>();
	cupoint.put("cno", cno);
	cupoint.put("point", usePoint);
	
	pointDao.usePointByCustomer(cupoint);
	
	response.sendRedirect("/semi/myshop/orderlist.jsp");
	
%>