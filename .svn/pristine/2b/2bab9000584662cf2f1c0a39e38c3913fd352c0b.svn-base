<%@page import="java.util.ArrayList"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="semi.dao.CustomerDao"%>
<%@page import="semi.vo.Customer"%>
<%@page import="java.util.List"%>
<%@page import="semi.vo.OrderDetail"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="semi.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");
	
	int cancelNo = Integer.parseInt(request.getParameter("orderno"));
	OrderDao orderdao = OrderDao.getInstance();
	orderdao.updatecancel(cancelNo);


	Customer customer = (Customer) session.getAttribute("logged-in-user");
	
	
	
	String begin =  request.getParameter("begin");
	String end = request.getParameter("end");
	String pageno = request.getParameter("pageno");
	String orderno = request.getParameter("orderno");
	System.out.println(pageno);
	
	DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
	OrderDao dao = OrderDao.getInstance();
	Map<String, Object> indexRange = new HashMap<>();
	
	
	if(begin == ""){
		
		Date nowDate = new Date();
		begin =  sdFormat.format(nowDate);
		end =  sdFormat.format(nowDate);
	} 
	
	indexRange.put("begin", begin);
	indexRange.put("end", end);
	indexRange.put("customer", customer.getNo());
	indexRange.put("custno", orderno);
	
	final int rows = 5;
	if (pageno == null) {
		pageno = "1";
	}
	
	int currentPage = Integer.parseInt(pageno);
	int records;
	int pages = 0;
	int beginIndex = (currentPage -1) * rows + 1;
	int endIndex = currentPage * rows;
	
	records = dao.getOrderListCount(indexRange);
	pages = (int)Math.ceil((double)records/rows);
	
	indexRange.put("beginIndex", beginIndex);
	indexRange.put("endIndex", endIndex);

	
	List<OrderDetail> items = dao.getOrderListByPage(indexRange);
	
	
	
	TreeMap<Integer, List<OrderDetail>> map = new TreeMap<>();
	
	int prevOrderNo = -1;
	
	for(OrderDetail item : items){
		int currentOrdersNo = item.getOrderNo();
		
			if(prevOrderNo == currentOrdersNo){
				
				List<OrderDetail> itemsmap = map.get(currentOrdersNo);	
				itemsmap.add(item);
				map.put(currentOrdersNo, itemsmap);
				
			} else {
				
				List<OrderDetail> itemsmap = new ArrayList<>();
				itemsmap.add(item);
				map.put(currentOrdersNo, itemsmap);
				prevOrderNo = currentOrdersNo;
				
			}
	}
	
	Gson gson = new Gson();
	String text = gson.toJson(map);
	
	out.write(text);










	
	//response.sendRedirect("orderlist.jsp"); 

%>
    