package kr.co.bucket.repository.domain;

import java.util.Date;

public class SearchMemResult {
	private String name;
	private Date reg_Date;
	private String birth;
	private String package_Price;
	private String package_Name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getReg_Date() {
		return reg_Date;
	}
	public void setReg_Date(Date reg_Date) {
		this.reg_Date = reg_Date;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPackage_Price() {
		return package_Price;
	}
	public void setPackage_Price(String package_Price) {
		this.package_Price = package_Price;
	}
	public String getPackage_Name() {
		return package_Name;
	}
	public void setPackage_Name(String package_Name) {
		this.package_Name = package_Name;
	}
	
	
	
}