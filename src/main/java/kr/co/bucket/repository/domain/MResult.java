package kr.co.bucket.repository.domain;

public class MResult {
	private String packageCode;
	private String packageName;
	private int packagePrice;
	private String packageImgpath;

	public String getPackageCode() {
		return packageCode;
	}
	public void setPackageCode(String packageCode) {
		this.packageCode = packageCode;
	}
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public int getPackagePrice() {
		return packagePrice;
	}
	public void setPackagePrice(int packagePrice) {
		this.packagePrice = packagePrice;
	}
	public String getPackageImgpath() {
		return packageImgpath;
	}
	public void setPackageImgpath(String packageImgpath) {
		this.packageImgpath = packageImgpath;
	}
}
