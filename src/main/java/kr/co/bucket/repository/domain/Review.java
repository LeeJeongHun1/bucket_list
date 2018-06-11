package kr.co.bucket.repository.domain;

import java.util.Date;

public class Review {
	public int getReviewCode() {
		return reviewCode;
	}
	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getAirEvalScore() {
		return airEvalScore;
	}
	public void setAirEvalScore(int airEvalScore) {
		this.airEvalScore = airEvalScore;
	}
	public int getHotelEvalScore() {
		return hotelEvalScore;
	}
	public void setHotelEvalScore(int hotelEvalScore) {
		this.hotelEvalScore = hotelEvalScore;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getPackageCode() {
		return packageCode;
	}
	public void setPackageCode(String packageCode) {
		this.packageCode = packageCode;
	}
	private int reviewCode;
	private String userEmail;
	private String title;
	private String content;
	private int airEvalScore;
	private int hotelEvalScore;
	private Date regDate;
	private String packageCode;
}
