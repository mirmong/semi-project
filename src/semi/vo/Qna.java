package semi.vo;

import java.util.Date;

import semi.utils.DateUtil;

public class Qna {

	private int quesNo;
	private int custNo;
	private int proNo;
	private String proImg;
	private String custName;
	private String quSubject;
	private String quContents;
	private String awSubject;
	private String awContents;
	private String password;
	private int quViewcount;
	private int awViewcount;
	private Date quCreateDate;
	private Date awCreateDate;
	private String customerGrade;
	private String adminId;
	
	
	public int getProNo() {
		return proNo;
	}
	public void setProNo(int proNo) {
		this.proNo = proNo;
	}
	public int getQuesNo() {
		return quesNo;
	}
	public void setQuesNo(int quesNo) {
		this.quesNo = quesNo;
	}
	public String getProImg() {
		return proImg;
	}
	public void setProNo(String proImg) {
		this.proImg = proImg;
	}
	public int getCustNo() {
		return custNo;
	}
	public void setCustNo(int custNo) {
		this.custNo = custNo;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustId(String custName) {
		this.custName = custName;
	}
	public String getQuSubject() {
		return quSubject;
	}
	public void setQuSubject(String quSubject) {
		this.quSubject = quSubject;
	}
	public String getQuContents() {
		return quContents;
	}
	public void setQuContents(String quContents) {
		this.quContents = quContents;
	}
	public String getAwSubject() {
		return awSubject;
	}
	public void setAwSubject(String awSubject) {
		this.awSubject = awSubject;
	}
	public String getAwContents() {
		return awContents;
	}
	public void setAwContents(String awContents) {
		this.awContents = awContents;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getQuViewcount() {
		return quViewcount;
	}
	public void setQuViewcount(int quViewcount) {
		this.quViewcount = quViewcount;
	}
	public int getAwViewcount() {
		return awViewcount;
	}
	public void setAwViewcount(int awViewcount) {
		this.awViewcount = awViewcount;
	}
	public Date getQuCreateDate() {
		return quCreateDate;
	}
	public String getQuCreateDateSDF() {
		return DateUtil.dateToString(quCreateDate);
	}
	public void setQuCreateDate(Date quCreateDate) {
		this.quCreateDate = quCreateDate;
	}
	public Date getAwCreateDate() {
		return awCreateDate;
	}
	public String getAwCreateDataSDF() {
		return DateUtil.dateToString(awCreateDate);
	}
	public void setAwCreateDate(Date awCreateDate) {
		this.awCreateDate = awCreateDate;
	}
	public String getCustomerGrade() {
		return customerGrade;
	}
	public void setCustomerGrade(String customerGrade) {
		this.customerGrade = customerGrade;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
}
