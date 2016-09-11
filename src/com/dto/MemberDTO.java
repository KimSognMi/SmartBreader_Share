package com.dto;

public class MemberDTO {

	private int m_num;
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_gender;
	private String m_age;
	private String m_post1;
	private String m_post2;
	private String m_addr1;
	private String m_addr2;
	private String m_phone1;
	private String m_phone2;
	private String m_phone3;

	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(int m_num, String m_id, String m_pw, String m_name, String m_gender, String m_age, String m_post1,
			String m_post2, String m_addr1, String m_addr2, String m_phone1, String m_phone2, String m_phone3) {
		super();
		this.m_num = m_num;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_gender = m_gender;
		this.m_age = m_age;
		this.m_post1 = m_post1;
		this.m_post2 = m_post2;
		this.m_addr1 = m_addr1;
		this.m_addr2 = m_addr2;
		this.m_phone1 = m_phone1;
		this.m_phone2 = m_phone2;
		this.m_phone3 = m_phone3;
	}

	@Override
	public String toString() {
		return "MemberDTO [m_num=" + m_num + ", m_id=" + m_id + ", m_pw=" + m_pw + ", m_name=" + m_name + ", m_gender="
				+ m_gender + ", m_age=" + m_age + ", m_post1=" + m_post1 + ", m_post2=" + m_post2 + ", m_addr1="
				+ m_addr1 + ", m_addr2=" + m_addr2 + ", m_phone1=" + m_phone1 + ", m_phone2=" + m_phone2 + ", m_phone3="
				+ m_phone3 + "]";
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

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

	public String getM_gender() {
		return m_gender;
	}

	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}

	public String getM_age() {
		return m_age;
	}

	public void setM_age(String m_age) {
		this.m_age = m_age;
	}

	public String getM_post1() {
		return m_post1;
	}

	public void setM_post1(String m_post1) {
		this.m_post1 = m_post1;
	}

	public String getM_post2() {
		return m_post2;
	}

	public void setM_post2(String m_post2) {
		this.m_post2 = m_post2;
	}

	public String getM_addr1() {
		return m_addr1;
	}

	public void setM_addr1(String m_addr1) {
		this.m_addr1 = m_addr1;
	}

	public String getM_addr2() {
		return m_addr2;
	}

	public void setM_addr2(String m_addr2) {
		this.m_addr2 = m_addr2;
	}

	public String getM_phone1() {
		return m_phone1;
	}

	public void setM_phone1(String m_phone1) {
		this.m_phone1 = m_phone1;
	}

	public String getM_phone2() {
		return m_phone2;
	}

	public void setM_phone2(String m_phone2) {
		this.m_phone2 = m_phone2;
	}

	public String getM_phone3() {
		return m_phone3;
	}

	public void setM_phone3(String m_phone3) {
		this.m_phone3 = m_phone3;
	}

}
