package kr.co.bucket.repository.domain;

import java.util.List;

public class Schedule {
	private String startDate;
	private String endDate;
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	private List<String> daily;
	
	public List<String> getDaily() {
		return daily;
	}
	public void setDaily(List<String> daily) {
		this.daily = daily;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	
}
