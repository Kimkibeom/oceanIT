package com.oceanIT.vo;

import java.util.Date;

public class SampleVO {
	private int IDX;
	private String TITLE;
	private int HIT_CNT;
	private Date CREA_DTM;
	public int getIDX() {
		return IDX;
	}
	public void setIDX(int IDX) {
		this.IDX = IDX;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String TITLE) {
		this.TITLE = TITLE;
	}
	public int getHIT_CNT() {
		return HIT_CNT;
	}
	public void setHIT_CNT(int HIT_CNT) {
		this.HIT_CNT = HIT_CNT;
	}
	public Date getCREA_DTM() {
		return CREA_DTM;
	}
	public void setCREA_DTM(Date CREA_DTM) {
		this.CREA_DTM = CREA_DTM;
	}
	@Override
	public String toString() {
		return "SampleVO [IDX=" + IDX + ", TITLE=" + TITLE + ", HIT_CNT=" + HIT_CNT + ", CREA_DTM=" + CREA_DTM + "]";
	}
	
	
}
