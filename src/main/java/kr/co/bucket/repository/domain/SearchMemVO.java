package kr.co.bucket.repository.domain;

import java.util.Date;

public class SearchMemVO {
	private String name;
	private String eamil;
	private String miniBirth;
	private String maxBirth;
	private Date miniRegDate;
	private Date maxRegDate;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEamil() {
		return eamil;
	}
	public void setEamil(String eamil) {
		this.eamil = eamil;
	}
	public String getMiniBirth() {
		return miniBirth;
	}
	public void setMiniBirth(String miniBirth) {
		this.miniBirth = miniBirth;
	}
	public String getMaxBirth() {
		return maxBirth;
	}
	public void setMaxBirth(String maxBirth) {
		this.maxBirth = maxBirth;
	}
	public Date getMiniRegDate() {
		return miniRegDate;
	}
	public void setMiniRegDate(Date miniRegDate) {
		this.miniRegDate = miniRegDate;
	}
	public Date getMaxRegDate() {
		return maxRegDate;
	}
	public void setMaxRegDate(Date maxRegDate) {
		this.maxRegDate = maxRegDate;
	}
	
}
