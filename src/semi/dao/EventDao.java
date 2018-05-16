package semi.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import semi.utils.IbatisUtil;
import semi.vo.Event;

public class EventDao {
	
	private static EventDao instance;
	
	private SqlMapClient sqlMapper;
	
	static {
		instance = new EventDao();
	}
	
	private EventDao() {
		sqlMapper = IbatisUtil.getsqlMap();
	}
	
	public static EventDao getInstance() {
		return instance;
	}
	
	@SuppressWarnings("unchecked")
	public List<Event> getAllEvents() throws SQLException {
		return sqlMapper.queryForList("getAllEvents");
	}
	
	public Event getDetailEvent(int no) throws SQLException {
		return (Event)sqlMapper.queryForObject("getDetailEvent", no);
	}
	
	public void eventCountByNo(int no) throws SQLException {
		sqlMapper.update("eventCountByNo", no);
	}
	
	public Event getNextEvent(int no) throws SQLException {
		return (Event)sqlMapper.queryForObject("getNextEvent", no);
	}
	
	public Event getPrevEvent(int no) throws SQLException {
		return (Event)sqlMapper.queryForObject("getPrevEvent", no);
	}
	
}