package com.dto;

public class PetDTO {
	private int m_num;
	private String p_kkcnumber;
	private String p_name;
	private int p_age;
	private String p_gender;
	private String p_birth;
	private String p_type;
	private String p_photo;
	private String p_feature;

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public String getP_kkcnumber() {
		return p_kkcnumber;
	}

	public void setP_kkcnumber(String p_kkcnumber) {
		this.p_kkcnumber = p_kkcnumber;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getP_age() {
		return p_age;
	}

	public void setP_age(int p_age) {
		this.p_age = p_age;
	}

	public String getP_gender() {
		return p_gender;
	}

	public void setP_gender(String p_gender) {
		this.p_gender = p_gender;
	}

	public String getP_birth() {
		return p_birth;
	}

	public void setP_birth(String p_birth) {
		this.p_birth = p_birth;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public String getP_photo() {
		return p_photo;
	}

	public void setP_photo(String p_photo) {
		this.p_photo = p_photo;
	}

	public String getP_feature() {
		return p_feature;
	}

	public void setP_feature(String p_feature) {
		this.p_feature = p_feature;
	}

	@Override
	public String toString() {
		return "PetDTO [m_num=" + m_num + ", p_kkcnumber=" + p_kkcnumber + ", p_name=" + p_name + ", p_age=" + p_age
				+ ", p_gender=" + p_gender + ", p_birth=" + p_birth + ", p_type=" + p_type + ", p_photo=" + p_photo
				+ ", p_feature=" + p_feature + "]";
	}

	public PetDTO(int m_num, String p_kkcnumber, String p_name, int p_age, String p_gender, String p_birth,
			String p_type, String p_photo, String p_feature) {
		super();
		this.m_num = m_num;
		this.p_kkcnumber = p_kkcnumber;
		this.p_name = p_name;
		this.p_age = p_age;
		this.p_gender = p_gender;
		this.p_birth = p_birth;
		this.p_type = p_type;
		this.p_photo = p_photo;
		this.p_feature = p_feature;
	}

	public PetDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

}
