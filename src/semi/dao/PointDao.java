package semi.dao;

import java.sql.SQLException;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import semi.utils.IbatisUtil;
import semi.vo.PointDetail;

public class PointDao {

	private static PointDao instance;
	
	private SqlMapClient sqlMapper;
	
	static {
		instance = new PointDao();
	}
	
	private PointDao() {
		sqlMapper = IbatisUtil.getsqlMap();
	}
	
	public static PointDao getInstance() {
		return instance;
	}
	
	public void usePointHistory(PointDetail pointDetail) throws SQLException {
		sqlMapper.insert("usePointHistory", pointDetail);
	}
	
	public void savePointHistory(PointDetail pointDetail) throws SQLException {
		sqlMapper.insert("savePointHistory", pointDetail);
	}
	
	public void usePointByCustomer(Map<String, Object> cpoint) throws SQLException {
		sqlMapper.update("usePointByCustomer", cpoint);
	}
	
	public void savePointByCustomer(Map<String, Object> spoint) throws SQLException {
		sqlMapper.update("savePointByCustomer", spoint);
	}
	
}
