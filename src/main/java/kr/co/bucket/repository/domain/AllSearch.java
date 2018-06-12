package kr.co.bucket.repository.domain;

public class AllSearch {
	private int packagePrice;
	private String startDate;
	private String endDate;
	private int[] day;
	private String keyword;
	private String dkeyword;
	private String cityCode;
	private String price;
	private String departure;
	private int pageNo = 1;
	private int listSize = 4;

	public int getBegin() {
		return (pageNo -1) * listSize + 1;
	} // 규칙을 찾음 . 시작 
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getEnd() {
		return pageNo * listSize;
	} // 페이지 끝
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
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
	public String getDkeyword() {
		return dkeyword;
	}
	public void setDkeyword(String dkeyword) {
		this.dkeyword = dkeyword;
	}

	
}
