package kr.co.bucket.repository.domain;

public class AirSearch {
	
	
	private String airCode;
	private String airName;
	private String departureCityCode;
	private String arrivalCityCode;
	private String seatCnt;
	private String startDate;
	private String endDate;
	private String flyingTime;
	private int adultPrice;
	private int childPrice;
	private int babyPrice;
	
	public String getAirCode() {
		return airCode;
	}
	public void setAirCode(String airCode) {
		this.airCode = airCode;
	}
	public String getAirName() {
		return airName;
	}
	public void setAirName(String airName) {
		this.airName = airName;
	}
	public String getDepartureCityCode() {
		return departureCityCode;
	}
	public void setDepartureCityCode(String departureCityCode) {
		this.departureCityCode = departureCityCode;
	}
	public String getArrivalCityCode() {
		return arrivalCityCode;
	}
	public void setArrivalCityCode(String arrivalCityCode) {
		this.arrivalCityCode = arrivalCityCode;
	}
	public String getSeatCnt() {
		return seatCnt;
	}
	public void setSeatCnt(String seatCnt) {
		this.seatCnt = seatCnt;
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
	public String getFlyingTime() {
		return flyingTime;
	}
	public void setFlyingTime(String flyingTime) {
		this.flyingTime = flyingTime;
	}
	public int getAdultPrice() {
		return adultPrice;
	}
	public void setAdultPrice(int adultPrice) {
		this.adultPrice = adultPrice;
	}
	public int getChildPrice() {
		return childPrice;
	}
	public void setChildPrice(int childPrice) {
		this.childPrice = childPrice;
	}
	public int getBabyPrice() {
		return babyPrice;
	}
	public void setBabyPrice(int babyPrice) {
		this.babyPrice = babyPrice;
	}
	
}
