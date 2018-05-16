package semi.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import semi.utils.IbatisUtil;
import semi.vo.Notice;

public class NoticeDao {

	private static NoticeDao instance;
	
	private SqlMapClient sqlMapper;
	
	static {
		instance = new NoticeDao();
	}
	
	private NoticeDao() {
		sqlMapper = IbatisUtil.getsqlMap();
	}
	
	public static NoticeDao getInstance() {
		return instance;
	}
	
	@SuppressWarnings("unchecked")
	public List<Notice> getAllNotice() throws SQLException {
		return sqlMapper.queryForList("getAllNotice");
	}
	
	public Notice getDetailNotice(int no) throws SQLException {
		return (Notice) sqlMapper.queryForObject("getDetailNotice", no);
	}
	
	public void noticeCountByNo(int no) throws SQLException {
		sqlMapper.update("noticeCountByNo", no);
	}
	
	public Notice getNextNotice(int no) throws SQLException {
		return (Notice) sqlMapper.queryForObject("getNextNotice", no);
	}
	
	public Notice getPrevNotice(int no) throws SQLException {
		return (Notice) sqlMapper.queryForObject("getPrevNotice", no);
	}
	
	public int getNoticeCounts() throws SQLException {
		return (int) sqlMapper.queryForObject("getNoticeCounts");
	}
	
	@SuppressWarnings("unchecked")
	public List<Notice> getNoticeByRange(Map<String, Object> indexRange) throws SQLException {
		return sqlMapper.queryForList("getNoticeByRange", indexRange);
	}
	
	public int getSearchNoticeCountsBySubject(String search) throws SQLException {
		return (int) sqlMapper.queryForObject("getSearchNoticeCountsBySubject", search);
	}
	
	@SuppressWarnings("unchecked")
	public List<Notice> getSearchNoticeBySubject(Map<String, Object> indexRange) throws SQLException {
		return sqlMapper.queryForList("getSearchNoticeBySubject", indexRange);
	}
	
	public int getSearchNoticeCountsByName(String search) throws SQLException {
		return (int) sqlMapper.queryForObject("getSearchNoticeCountsByName", search);
	}
	
	@SuppressWarnings("unchecked")
	public List<Notice> getSearchNoticeByName(Map<String, Object> indexRange) throws SQLException {
		return sqlMapper.queryForList("getSearchNoticeByName", indexRange);
	}
	
	@SuppressWarnings("unchecked")
	public List<Notice> getAllNoticeWithAllCols() throws SQLException {
		return sqlMapper.queryForList("getAllNoticeWithAllCols");
	}
}