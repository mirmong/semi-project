package semi.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;
import semi.utils.IbatisUtil;
import semi.vo.Qna;

public class QnaDao {

	private static QnaDao instance;
	
	private SqlMapClient sqlMapper;
	
	static {
		instance = new QnaDao();
	}
	
	private QnaDao() {
		sqlMapper = IbatisUtil.getsqlMap();
	}
	
	public static QnaDao getInstance() {
		return instance;
	}	
	
	@SuppressWarnings("unchecked")
	public List<Qna> getAllQuestions() throws SQLException {
		return sqlMapper.queryForList("getAllQuestions");
	}
	
	public Qna getDetailQuestion(int no) throws SQLException {
		return (Qna) sqlMapper.queryForObject("getDetailQuestion", no);
	}
	
	public Qna getThisAnswer(int no) throws SQLException {
		return (Qna) sqlMapper.queryForObject("getThisAnswer", no);
	}
	
	public Qna getPassword(int no) throws SQLException {
		return (Qna) sqlMapper.queryForObject("getPassword", no);
	}
	
	public void countQuestionByNo(int no) throws SQLException {
		sqlMapper.update("countQuestionByNo", no);
	}
	
	public void countAnswerByNo(int no) throws SQLException {
		sqlMapper.update("countAnswerByNo", no);
	}
	
	public int getQnaCounts() throws SQLException {
		return (int) sqlMapper.queryForObject("getQnaCounts");
	}
	
	@SuppressWarnings("unchecked")
	public List<Qna> getQnaByRange(Map<String, Object> indexRange) throws SQLException {
		return sqlMapper.queryForList("getQnaByRange", indexRange);
	}
	
	public int getSearchQnaCountsBySubject(String search) throws SQLException {
		return (int) sqlMapper.queryForObject("getSearchQnaCountsBySubject", search);
	}
	
	@SuppressWarnings("unchecked")
	public List<Qna> getSearchQnaBySubject(Map<String, Object> indexRange) throws SQLException {
		return sqlMapper.queryForList("getSearchQnaBySubject", indexRange);
	}
	
	public int getSearchQnaCountsByName(String search) throws SQLException {
		return (int) sqlMapper.queryForObject("getSearchQnaCountsByName", search);
	}
	
	@SuppressWarnings("unchecked")
	public List<Qna> getSearchQnaByName(Map<String, Object> indexRange) throws SQLException {
		return sqlMapper.queryForList("getSearchQnaByName", indexRange);
	}
	
	public List<Qna> getQuestionByNo(int no) throws SQLException {
		return (List<Qna>) sqlMapper.queryForList("getQuestionByNo", no);
	}
}
