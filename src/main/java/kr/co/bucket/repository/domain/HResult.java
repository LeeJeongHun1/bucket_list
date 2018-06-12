package kr.co.bucket.repository.domain;

public class HResult {
	private String packageCode;
	private String packageName;
	private String hotelName;
	private String hotelImgPath;
	private String scheduleDaily;
	private String cityName;
	private int dailyCode;
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
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelImgPath() {
		return hotelImgPath;
	}
	public void setHotelImgPath(String hotelImgPath) {
		this.hotelImgPath = hotelImgPath;
	}
	public String getScheduleDaily() {
		return scheduleDaily;
	}
	public void setScheduleDaily(String scheduleDaily) {
		this.scheduleDaily = scheduleDaily;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public int getDailyCode() {
		return dailyCode;
	}
	public void setDailyCode(int dailyCode) {
		this.dailyCode = dailyCode;
	}
}
