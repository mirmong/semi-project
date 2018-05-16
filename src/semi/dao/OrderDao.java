package semi.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import semi.utils.IbatisUtil;
import semi.vo.CartItem;
import semi.vo.OrderDetail;
import semi.vo.PointDetail;

public class OrderDao {

	private static OrderDao instance;
	
	private SqlMapClient sqlMapper;
	
	static {
		instance = new OrderDao();
	}
	
	private OrderDao() {
		sqlMapper = IbatisUtil.getsqlMap();
	}
	
	public static OrderDao getInstance() {
		return instance;
	}		
	
	
	public PointDetail getchargeconsumePoint(int customerno) throws SQLException {
		return (PointDetail) sqlMapper.queryForObject("getchargeconsumePoint",customerno);
		
	}
	
	@SuppressWarnings("unchecked")
	public List<CartItem> getCartlist(int custNo) throws SQLException{
		return (List<CartItem>) sqlMapper.queryForList("getCartlist", custNo);
	}

	@SuppressWarnings("unchecked")
	public List<OrderDetail> getOrderlist(Map<String, Object> day) throws SQLException{
		return (List<OrderDetail>) sqlMapper.queryForList("getOrderlist", day);
	}
	
	public int getOrderListCount(Map<String, Object> indexRange) throws SQLException {
		return (int) sqlMapper.queryForObject("getOrderListCount", indexRange);
	}
	
	@SuppressWarnings("unchecked")
	public List<OrderDetail> getOrderListByPage(Map<String, Object> indexRange) throws SQLException {
		return (List<OrderDetail>) sqlMapper.queryForList("getOrderListByPage", indexRange);
	}
	
	public void orderCancel(int no) throws SQLException {
		sqlMapper.update("orderCancel",no);
	}
	
	@SuppressWarnings("unchecked")
	public List<OrderDetail> getOrderlistAll() throws SQLException{
		return (List<OrderDetail>) sqlMapper.queryForList("getOrderlistAll");
	}
	
	public void updatecancel(int no) throws SQLException {
		sqlMapper.update("updatecancel", no);
	}
	
	public int ordercount(Map<String, Object> no) throws SQLException {
		return (Integer) sqlMapper.queryForObject("ordercount", no);
	}
	
	public int cancelcount(Map<String, Object> no) throws SQLException {
		return (Integer) sqlMapper.queryForObject("cancelcount", no);
	}
	
	public int getOrderSeq() throws SQLException {
		return (int) sqlMapper.queryForObject("getOrderSeq");
	}
	
	public void addOrder(OrderDetail orderDetail) throws SQLException {
		sqlMapper.insert("addOrder", orderDetail);
	}
	
	public void addOrderDetail(OrderDetail orderDetail) throws SQLException {
		sqlMapper.insert("addOrderDetail", orderDetail);
	}
	
	public CartItem getCartItemByMap(Map<String, Object> map) throws SQLException {
		return (CartItem)sqlMapper.queryForObject("getCartItemByMap", map);
	}

	@SuppressWarnings("unchecked")
	public List<OrderDetail> daysearch(Map<String, String> OD) throws SQLException{
		return (List<OrderDetail>) sqlMapper.queryForList("daysearch", OD);
	}


	public void deleteCartItem(int no) throws SQLException {
		sqlMapper.delete("deleteCartItem", no);
	}

}
