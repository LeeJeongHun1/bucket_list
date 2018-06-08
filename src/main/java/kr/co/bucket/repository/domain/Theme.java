package kr.co.bucket.repository.domain;

public class Theme {
	private String imgPath;
	private String themeName;
	private int themePrice;
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public int getThemePrice() {
		return themePrice;
	}
	public void setThemePrice(int themePrice) {
		this.themePrice = themePrice;
	}
}
