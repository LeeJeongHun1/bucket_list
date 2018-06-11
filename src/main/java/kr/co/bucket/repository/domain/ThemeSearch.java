package kr.co.bucket.repository.domain;

public class ThemeSearch {
	
	private int themeCode;
	private String dailyCode;
	private int cityCode;
	private String themeName;
	private String themeType;
	private String themeInfo;
	private String imgPath;
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	private int themePrice;
	public int getThemeCode() {
		return themeCode;
	}
	public void setThemeCode(int themeCode) {
		this.themeCode = themeCode;
	}
	public String getDailyCode() {
		return dailyCode;
	}
	public void setDailyCode(String dailyCode) {
		this.dailyCode = dailyCode;
	}
	public int getCityCode() {
		return cityCode;
	}
	public void setCityCode(int cityCode) {
		this.cityCode = cityCode;
	}
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public String getThemeType() {
		return themeType;
	}
	public void setThemeType(String themeType) {
		this.themeType = themeType;
	}
	public String getThemeInfo() {
		return themeInfo;
	}
	public void setThemeInfo(String themeInfo) {
		this.themeInfo = themeInfo;
	}
	public int getThemePrice() {
		return themePrice;
	}
	public void setThemePrice(int themePrice) {
		this.themePrice = themePrice;
	}
	
	
}
