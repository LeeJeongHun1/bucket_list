package kr.co.bucket.repository.domain;

import java.util.Date;

public class Payment {
	private int paymentCode;
	private String userEmail;
	private String packageCode;
	private int adultCnt;
	private int childCnt;
	private int babyCnt;
	private String packageName;
	private Date paymentDate;
	private int packagePrice;
	public int getPaymentCode() {
		return paymentCode;
	}
	public void setPaymentCode(int paymentCode) {
		this.paymentCode = paymentCode;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getPackageCode() {
		return packageCode;
	}
	public void setPackageCode(String packageCode) {
		this.packageCode = packageCode;
	}
	public int getAdultCnt() {
		return adultCnt;
	}
	public void setAdultCnt(int adultCnt) {
		this.adultCnt = adultCnt;
	}
	public int getChildCnt() {
		return childCnt;
	}
	public void setChildCnt(int childCnt) {
		this.childCnt = childCnt;
	}
	public int getBabyCnt() {
		return babyCnt;
	}
	public void setBabyCnt(int babyCnt) {
		this.babyCnt = babyCnt;
	}

	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
	public int getPackagePrice() {
		return packagePrice;
	}
	public void setPackagePrice(int packagePrice) {
		this.packagePrice = packagePrice;
	}
}
