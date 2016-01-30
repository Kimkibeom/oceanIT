package com.oceanIT.vo;

public class LoginVO {
	private String member_id;
	private String name;
	private String password;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "loginVO [member_id=" + member_id + ", name=" + name + ", password=" + password + "]";
	}
	
	
}