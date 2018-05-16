package semi.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import semi.utils.IbatisUtil;
import semi.vo.CartItem;
import semi.vo.Customer;
import semi.vo.PasswordHint;
import semi.vo.ShippingClass;

public class CustomerDao {

	private static CustomerDao instance;
	
	private SqlMapClient sqlMapper;
	
	static {
		instance = new CustomerDao();
	} 
	
	private CustomerDao() {
		sqlMapper = IbatisUtil.getsqlMap();
	}
	
	public static CustomerDao getInstance() {
		return instance;
	}
	
	public void addCustomer(Customer customer) throws  SQLException {
		sqlMapper.insert("addCustomer",customer);
	}
	
	public Customer login(String custid) throws SQLException {
		return (Customer) sqlMapper.queryForObject("login",custid);
	}

	public Customer getCustomerByEmail(String Email) throws SQLException {
		return (Customer) sqlMapper.queryForObject("getCustomerByEmail",Email);
	}
	
	public Customer getCustomerById(int no) throws SQLException {
		return (Customer) sqlMapper.queryForObject("getCustomerById",no);
	}

	public void modifyCoustomer(Customer customer) throws SQLException {
		sqlMapper.update("modifyCoustomer", customer);
	}
	
	public void modifyHint(PasswordHint passwordHint ) throws SQLException {
		sqlMapper.update("modifyHint", passwordHint);
	}
	
	public void deleteCustomr(String id) throws SQLException {
		sqlMapper.update("deleteCustomr",id);
	}
	
	@SuppressWarnings("unchecked")
	public List<PasswordHint> quesstion() throws SQLException {
		return (List<PasswordHint>) IbatisUtil.getsqlMap().queryForList("quesstion");
	}
	
	@SuppressWarnings("unchecked")
	public List<Customer> allCustomer() throws SQLException {
		return (List<Customer>) IbatisUtil.getsqlMap().queryForList("allCustomer");
	} 
	
	public void addCustomerHint(PasswordHint passwordHint) throws  SQLException {
		sqlMapper.insert("addCustomerHint",passwordHint);
	}
	
	public PasswordHint myQuestion(int no) throws SQLException {
		return(PasswordHint) IbatisUtil.getsqlMap().queryForObject("myQuestion",no);
	}
	
	public void deleteCartItemsByProductNo(Map<String, Object> map) throws SQLException {
		sqlMapper.delete("deleteCartItemsByProductNo", map);
	}
	
	public void AllDeleteCartItems(int custno) throws SQLException {
		sqlMapper.delete("AllDeleteCartItems", custno);
	}
	
	public void CartItemsQtyUpdate(Map<String, Object> map) throws SQLException {
		sqlMapper.update("CartItemsQtyUpdate", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<CartItem> getCartItemsByCustomerNo(int no) throws SQLException {
		return (List<CartItem>) IbatisUtil.getsqlMap().queryForList("getCartItemsByCustomerNo", no);
	} 
	

	
	public void addShippingClassByCustomerNo (ShippingClass shippingClass) throws SQLException {
		sqlMapper.insert("addShippingClassByCustomerNo", shippingClass);
	}
	
	@SuppressWarnings("unchecked")
	public List<ShippingClass> getaddressAll(int no) throws SQLException{
		return (List<ShippingClass>) sqlMapper.queryForList("getaddressAll", no);
	}
	
	
	// 송재호 시작 -------------------------------------------------------------------------
	public Customer getCustomerByName(String name) throws SQLException {
		return (Customer) sqlMapper.queryForObject("getCustomerByName", name);
	}
	public Customer getCustomerByReviewNo(int no) throws SQLException {
		return (Customer) sqlMapper.queryForObject("getCustomerByReviewNo", no);
	}
	// 송재호 끝 --------------------------------------------------------------------------
	
	
	// 김소정 시작 -------------------------------------------------------------------------
	@SuppressWarnings("unchecked")
	public List<ShippingClass> getShippingClassByNo(int no) throws SQLException {
		return (List<ShippingClass>)sqlMapper.queryForList("getShippingClassByNo", no);
	}
	
	public void addShippingClass (ShippingClass shippingClass) throws SQLException {
		sqlMapper.insert("addShippingClass", shippingClass);
	}
	
	public void delShippingClass (int sno) throws SQLException {
		sqlMapper.delete("delShippingClass", sno);
	}
	// 김소정 끝 --------------------------------------------------------------------------
}
