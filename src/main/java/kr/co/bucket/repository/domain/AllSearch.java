package kr.co.bucket.repository.domain;

public class AllSearch {
	private int packagePrice;
	private String startDate;
	private String endDate;
	private int[] day;
	private String detailKeyword;
	public int getPackagePrice() {
		return packagePrice;
	}
	public void setPackagePrice(int packagePrice) {
		this.packagePrice = packagePrice;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public int[] getDay() {
		return day;
	}
	public void setDay(int[] day) {
		this.day = day;
	}
	public String getDetailKeyword() {
		return detailKeyword;
	}
	public void setDetailKeyword(String detailKeyword) {
		this.detailKeyword = detailKeyword;
	}
	
	
}
