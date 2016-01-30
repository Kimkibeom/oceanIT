package com.oceanIT.vo;

public class MemberVO {

	private int memberId;
	private String name;
	private String password;

	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberVO(int memberId, String name, String password) {
		super();
		this.memberId = memberId;
		this.name = name;
		this.password = password;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
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
		return "MemberVO [memberId=" + memberId + ", name=" + name + ", password=" + password + "]";
	}

}
