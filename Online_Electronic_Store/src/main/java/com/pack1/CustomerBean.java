package com.pack1;

import java.io.Serializable;

public class CustomerBean implements Serializable{
	private String cUname,cPword,cFname, cLname,cAddress,cMid,cMobile;

	

	public String getcUname() {
		return cUname;
	}

	public void setcUname(String cUname) {
		this.cUname = cUname;
	}

	public String getcPword() {
		return cPword;
	}

	public void setcPword(String cPword) {
		this.cPword = cPword;
	}

	public String getcFname() {
		return cFname;
	}

	public void setcFname(String cFname) {
		this.cFname = cFname;
	}

	public String getcLname() {
		return cLname;
	}

	public void setcLname(String cLname) {
		this.cLname = cLname;
	}

	public String getcAddress() {
		return cAddress;
	}

	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}

	public String getcMid() {
		return cMid;
	}

	public void setcMid(String cMid) {
		this.cMid = cMid;
	}

	public String getcMobile() {
		return cMobile;
	}

	public void setcMobile(String cMobile) {
		this.cMobile = cMobile;
	}
	public CustomerBean() { }
}
