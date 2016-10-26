package com.dto;

public class RequestPetDTO {
//whghlㅁㄴㅇㄹsadf

	private String userid;
	private String p_name;
	private int p_age;
	private String p_gender;
	private String p_type;
	private String r_content;
	private int r_num;
	private String r_agree;
	private int p_num;
	public RequestPetDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RequestPetDTO(String userid, String p_name, int p_age, String p_gender, String p_type, String r_content,
			int r_num, String r_agree, int p_num) {
		super();
		this.userid = userid;
		this.p_name = p_name;
		this.p_age = p_age;
		this.p_gender = p_gender;
		this.p_type = p_type;
		this.r_content = r_content;
		this.r_num = r_num;
		this.r_agree = r_agree;
		this.p_num = p_num;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public String getR_agree() {
		return r_agree;
	}
	public void setR_agree(String r_agree) {
		this.r_agree = r_agree;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	@Override
	public String toString() {
		return "RequestPetDTO [userid=" + userid + ", p_name=" + p_name + ", p_age=" + p_age + ", p_gender=" + p_gender
				+ ", p_type=" + p_type + ", r_content=" + r_content + ", r_num=" + r_num + ", r_agree=" + r_agree
				+ ", p_num=" + p_num + "]";
	}
	
	
	
	
	
	
	
	
	

	

}
