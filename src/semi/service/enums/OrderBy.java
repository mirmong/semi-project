package semi.service.enums;

public enum OrderBy{
	
	CREATE_DATE		(0, "출시일"	, "P.create_date"),
	ORDER_QTY 		(1, "주문량"	, "nvl(O.order_qty,0)"),
	DISCOUNT		(2, "할인가"	, "P.product_discount"),
	PRICE 			(3, "가격"	, "P.product_price"),
	NAME 			(4, "이름"	, "P.product_name"),
	STOCK_QTY		(5, "수량"	, "nvl(PS.stock_qty,0)");

	public final int no;
	public final String label;
	public final String sql;
	
	private OrderBy(int no, String label, String sql) {
		this.no = no;
		this.label = label;
		this.sql = sql;
	}

}