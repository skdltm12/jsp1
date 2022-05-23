package com.shop.common;

import java.util.Date;

public class MemberVO {
	private String mid;
	private String mpw;
	private String mname;
	private String memail;
	private String mtel;
	private String maddress;
	private Date mjoindate;
	private int mrank;
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMaddress() {
		return maddress;
	}
	public void setMaddress(String maddress) {
		this.maddress = maddress;
	}
	public Date getMjoindate() {
		return mjoindate;
	}
	public void setMjoindate(Date mjoindate) {
		this.mjoindate = mjoindate;
	}
	public int getMrank() {
		return mrank;
	}
	public void setMrank(int mrank) {
		this.mrank = mrank;
	}
	
	
}
