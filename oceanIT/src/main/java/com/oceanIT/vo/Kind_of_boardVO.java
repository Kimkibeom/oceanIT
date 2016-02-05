package com.oceanIT.vo;

public class Kind_of_boardVO {
	private int kind_no;
	private String name;
	private int parent_no;
	public int getKind_no() {
		return kind_no;
	}
	public void setKind_no(int kind_no) {
		this.kind_no = kind_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getParent() {
		return parent_no;
	}
	public void setParent(int parent_no) {
		this.parent_no = parent_no;
	}
	@Override
	public String toString() {
		return "Kind_of_boardVO [kind_no=" + kind_no + ", name=" + name + ", parent=" + parent_no + "]";
	}
	
	
}
