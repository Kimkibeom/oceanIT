package com.oceanIT.vo;

import java.util.Date;

public class BoardVO {

	private int boardNo;
	private String title;
	private String article;
	private String writer;
	private Date regDate;
	private String ip;
	private String password;
	private String email;
	private int secretCheck;
	private int readCnt;
	private int hit;
	private int kindNo;

	public BoardVO(int boardNo, String title, String article, String writer, Date regDate, String ip, String password,
			String email, int secretCheck, int readCnt, int hit, int kindNo) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.article = article;
		this.writer = writer;
		this.regDate = regDate;
		this.ip = ip;
		this.password = password;
		this.email = email;
		this.secretCheck = secretCheck;
		this.readCnt = readCnt;
		this.hit = hit;
		this.kindNo = kindNo;
	}

	public BoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArticle() {
		return article;
	}

	public void setArticle(String article) {
		this.article = article;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getSecretCheck() {
		return secretCheck;
	}

	public void setSecretCheck(int secretCheck) {
		this.secretCheck = secretCheck;
	}

	public int getReadCnt() {
		return readCnt;
	}

	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public int getKindNo() {
		return kindNo;
	}

	public void setKindNo(int kindNo) {
		this.kindNo = kindNo;
	}

	@Override
	public String toString() {
		return "BoardVO [boardNo=" + boardNo + ", title=" + title + ", article=" + article + ", writer=" + writer
				+ ", regDate=" + regDate + ", ip=" + ip + ", password=" + password + ", email=" + email
				+ ", secretCheck=" + secretCheck + ", readCnt=" + readCnt + ", hit=" + hit + ", kindNo=" + kindNo + "]";
	}

}
