package market.model;

import java.util.Date;

public class MemberDTO {

	private String m_email;
	private String m_passwd;
	private String m_seckey;
	private String m_name;
	private Date m_regdate;
	private Date m_deldate;
	private String m_delstatus;
	private String m_tel;
	
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_passwd() {
		return m_passwd;
	}
	public void setM_passwd(String m_passwd) {
		this.m_passwd = m_passwd;
	}
	public String getM_seckey() {
		return m_seckey;
	}
	public void setM_seckey(String m_seckey) {
		this.m_seckey = m_seckey;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public Date getM_regdate() {
		return m_regdate;
	}
	public void setM_regdate(Date m_regdate) {
		this.m_regdate = m_regdate;
	}
	public Date getM_deldate() {
		return m_deldate;
	}
	public void setM_deldate(Date m_deldate) {
		this.m_deldate = m_deldate;
	}
	public String getM_delstatus() {
		return m_delstatus;
	}
	public void setM_delstatus(String m_delstatus) {
		this.m_delstatus = m_delstatus;
	}
	public String getM_tel() {
		return m_tel;
	}
	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}
}
