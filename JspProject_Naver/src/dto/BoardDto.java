package dto;

import java.util.Date;

public class BoardDto {

	private int bno = 0;
	private String user_name = "";
	private String title = "";
	private String user_email = "";
	private String contents = "";  
	private String mod_pwd = "";
	private Date cre_date = null;
	private Date mod_date = null;
	private int mno = 0;
	
	public BoardDto() {
		super();
	}
	

	public BoardDto(int bno, String title
			, String contents, String name, Date cre_date, Date mod_date) {
		super();
		this.bno = bno;
		this.title = title;
		this.contents = contents;
		this.user_name = name;
		this.cre_date = cre_date;
		this.mod_date = mod_date;
	}

	

	public BoardDto(String user_name, String title
			, String user_email, String contents, String mod_pwd) {
		super();
		this.user_name = user_name;
		this.title = title;
		this.user_email = user_email;
		this.contents = contents;
		this.mod_pwd = mod_pwd;
	}

	public BoardDto(int bno, String user_name, String title
			, String user_email, String contents, String mod_pwd, int mno) {
		super();
		this.bno = bno;
		this.user_name = user_name;
		this.title = title;
		this.user_email = user_email;
		this.contents = contents;
		this.mod_pwd = mod_pwd;
		this.mno = mno;
	}
	
	public BoardDto(int bno, String user_name
			, String title, String user_email, String contents
			, String mod_pwd, Date cre_date, Date mod_date, int mno) {
		super();
		this.bno = bno;
		this.user_name = user_name;
		this.title = title;
		this.user_email = user_email;
		this.contents = contents;
		this.mod_pwd = mod_pwd;
		this.cre_date = cre_date;
		this.mod_date = mod_date;
		this.mno = mno;
	}

	

	public int getBno() {
		return bno;
	}


	public void setBno(int bno) {
		this.bno = bno;
	}


	public String getUser_name() {
		return user_name;
	}


	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getUser_email() {
		return user_email;
	}


	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}


	public String getMod_pwd() {
		return mod_pwd;
	}


	public void setMod_pwd(String mod_pwd) {
		this.mod_pwd = mod_pwd;
	}


	public Date getCre_date() {
		return cre_date;
	}


	public void setCre_date(Date cre_date) {
		this.cre_date = cre_date;
	}


	public Date getMod_date() {
		return mod_date;
	}


	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}


	public int getMno() {
		return mno;
	}


	public void setMno(int mno) {
		this.mno = mno;
	}


	@Override
	public String toString() {
		return "BoardDto [bno=" + bno + ", user_name=" + user_name 
				+ ", title=" + title + ", user_email=" + user_email
				+ ", contents=" + contents + ", mod_pwd=" + mod_pwd 
				+ ", cre_date=" + cre_date + ", mod_date=" + mod_date
				+ ", mno=" + mno + "]";
	}
	
	
}
