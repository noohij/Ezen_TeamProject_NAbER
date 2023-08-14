package dto;

import java.util.Date;

public class MemberDto {

	private int mno = 0;
	private String id = "";
	private String pwd = "";
	private String email = "";
	private String name = "";
	private Date birthday = null;
	private String telecom = "";
	private String gender = "";
	private String nationality = "";
	private String phonenumber = "";
	private boolean certname = false;
	private Date cre_date = null;
	private Date mod_date = null;
	
	public MemberDto() {
		super();
	}
	
	

	public MemberDto(String id, String pwd) {
		super();
		this.id = id;
		this.pwd = pwd;
	}

	
	
	public MemberDto(int mno, String id, String pwd
			, String email, String name, Date birthday
			, String telecom, String gender, String nationality
			, String phonenumber, boolean certname, Date cre_date
			, Date mod_date) {
		super();
		this.mno = mno;
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.name = name;
		this.birthday = birthday;
		this.telecom = telecom;
		this.gender = gender;
		this.nationality = nationality;
		this.phonenumber = phonenumber;
		this.certname = certname;
		this.cre_date = cre_date;
		this.mod_date = mod_date;
	}

	

	public int getMno() {
		return mno;
	}



	public void setMno(int mno) {
		this.mno = mno;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public Date getBirthday() {
		return birthday;
	}



	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}



	public String getTelecom() {
		return telecom;
	}



	public void setTelecom(String telecom) {
		this.telecom = telecom;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getNationality() {
		return nationality;
	}



	public void setNationality(String nationality) {
		this.nationality = nationality;
	}



	public String getPhonenumber() {
		return phonenumber;
	}



	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}



	public boolean isCertname() {
		return certname;
	}



	public void setCertname(boolean certname) {
		this.certname = certname;
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



	@Override
	public String toString() {
		return "MemberDto [mno=" + mno + ", id=" + id 
				+ ", pwd=" + pwd + ", email=" + email 
				+ ", name=" + name + ", birthday=" + birthday 
				+ ", telecom=" + telecom + ", gender=" + gender 
				+ ", nationality=" + nationality 
				+ ", phonenumber=" + phonenumber 
				+ ", certname=" + certname + ", cre_date=" + cre_date
				+ ", mod_date=" + mod_date + "]";
	}
	
	
	
}
