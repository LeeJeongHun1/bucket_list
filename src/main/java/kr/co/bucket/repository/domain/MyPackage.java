package kr.co.bucket.repository.domain;

import java.util.Date;

public class MyPackage {
	private String userEmail;
	private String packageName;
	private Date regDate;
	private int packagePrice;
	private String acceptYN;
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getPackagePrice() {
		return packagePrice;
	}
	public void setPackagePrice(int packagePrice) {
		this.packagePrice = packagePrice;
	}
	public String getAcceptYN() {
		return acceptYN;
	}
	public void setAcceptYN(String acceptYN) {
		this.acceptYN = acceptYN;
	}
	
}
