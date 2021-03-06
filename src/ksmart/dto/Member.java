package ksmart.dto;

public class Member {
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_level;
	private String m_phone;
	private String m_gender;
	private String m_email;
	private String genre_code;
	private int m_point;
	private String m_birth;
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_level() {
		return m_level;
	}
	public void setM_level(String m_level) {
		this.m_level = m_level;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_gender() {
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getGenre_code() {
		return genre_code;
	}
	public void setGenre_code(String genre_code) {
		this.genre_code = genre_code;
	}
	public int getM_point() {
		return m_point;
	}
	public void setM_point(int m_point) {
		this.m_point = m_point;
	}
	public String getM_birth() {
		return m_birth;
	}
	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}
	@Override
	public String toString() {
		return "Member [m_id=" + m_id + ", m_pw=" + m_pw + ", m_name=" + m_name + ", m_level=" + m_level + ", m_phone="
				+ m_phone + ", m_gender=" + m_gender + ", m_email=" + m_email + ", genre_code=" + genre_code
				+ ", m_point=" + m_point + ", m_birth=" + m_birth + "]";
	}
	
}
