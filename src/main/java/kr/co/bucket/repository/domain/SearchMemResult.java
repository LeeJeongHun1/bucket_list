package kr.co.bucket.repository.domain;

import java.util.Date;

public class SearchMemResult {
	private String name;
	private Date reg_Date;
	private String birth;
	private int package_Price;
	private String package_Name;
	private String payment_Date;
	private String user_email;
	private String priceSum;
	private String payCnt;
	private String theme_Type;
	private String accept_Yn;
	
	public String getAccept_yn() {
		return accept_Yn;
	}
	public void setAccept_yn(String accept_yn) {
		this.accept_Yn = accept_yn;
	}
	public String getTheme_type() {
		return theme_Type;
	}
	public void setTheme_type(String theme_type) {
		this.theme_Type = theme_type;
	}
	public String getPayCnt() {
		return payCnt;
	}
	public void setPayCnt(String payCnt) {
		this.payCnt = payCnt;
	}
	public String getPriceSum() {
		return priceSum;
	}
	public void setPriceSum(String priceSum) {
		this.priceSum = priceSum;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
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
	public int getPackage_Price() {
		return package_Price;
	}
	public void setPackage_Price(int package_Price) {
		this.package_Price = package_Price;
	}
	public String getPackage_Name() {
		return package_Name;
	}
	public void setPackage_Name(String package_Name) {
		this.package_Name = package_Name;
	}
	public String getPayment_Date() {
		return payment_Date;
	}
	public void setPayment_Date(String payment_Date) {
		this.payment_Date = payment_Date;
	}
	
	
	
}
