package com.oceanIT.vo;

public class ProfessorVO {
	private int professor_no;
	private String professor_name;
	private String professor_phone;
	private String professor_email;
	
	public int getProfessor_no() {
		return professor_no;
	}
	public void setProfessor_no(int professor_no) {
		this.professor_no = professor_no;
	}
	public String getProfessor_name() {
		return professor_name;
	}
	public void setProfessor_name(String professor_name) {
		this.professor_name = professor_name;
	}
	public String getProfessor_phone() {
		return professor_phone;
	}
	public void setProfessor_phone(String professor_phone) {
		this.professor_phone = professor_phone;
	}
	public String getProfessor_email() {
		return professor_email;
	}
	public void setProfessor_email(String professor_email) {
		this.professor_email = professor_email;
	}
	@Override
	public String toString() {
		return "ProfessorVO [professor_no=" + professor_no + ", professor_name=" + professor_name + ", professor_phone="
				+ professor_phone + ", professor_email=" + professor_email + "]";
	}
	
	
}
