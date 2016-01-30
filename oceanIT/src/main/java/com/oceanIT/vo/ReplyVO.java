package com.oceanIT.vo;

import java.util.Date;

public class ReplyVO {
	private int replyNo;
	private int boardNo;
	private String article;
	private String writer;
	private Date regDate;
	private String password;

	public ReplyVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReplyVO(int replyNo, int boardNo, String article, String writer, Date regDate, String password) {
		super();
		this.replyNo = replyNo;
		this.boardNo = boardNo;
		this.article = article;
		this.writer = writer;
		this.regDate = regDate;
		this.password = password;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "ReplyVO [replyNo=" + replyNo + ", boardNo=" + boardNo + ", article=" + article + ", writer=" + writer
				+ ", regDate=" + regDate + ", password=" + password + "]";
	}

}
