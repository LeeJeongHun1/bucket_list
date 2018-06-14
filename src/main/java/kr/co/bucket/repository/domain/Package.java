package kr.co.bucket.repository.domain;

import java.util.Random;

import org.springframework.web.multipart.MultipartFile;

public class Package {
	
	public Package() {
		Random rnd =new Random();
		StringBuffer buf =new StringBuffer();
		for(int i=0;i<8;i++){
			if(rnd.nextBoolean()){
				buf.append((char)((int)(rnd.nextInt(26))+97));
			}else{
				buf.append((rnd.nextInt(10)));
			}
		}
		this.packageCode = buf.toString();
	}
	private MultipartFile[] attachFile;
	private String packageCode;
	private String packageName;
	private String userEmail;
	private int startAirCode;
	private int endAirCode;
	private String packagePeopleCnt;
	private int packagePrice;
	private String packageImgPath;
	private String[] scheduleDaily;
	private int hotelCode;
	private int roomCode;
	private String[] themeDaily;
	private int[] tCode;
	private int dailyCode;
	private String filePath;
	
	public int getDailyCode() {
		return dailyCode;
	}
	public void setDailyCode(int dailyCode) {
		this.dailyCode = dailyCode;
	}
	public String[] getThemeDaily() {
		return themeDaily;
	}
	public void setThemeDaily(String[] themeDaily) {
		this.themeDaily = themeDaily;
	}
	public int[] gettCode() {
		return tCode;
	}
	public void settCode(int[] tCode) {
		this.tCode = tCode;
	}
	public int getHotelCode() {
		return hotelCode;
	}
	public void setHotelCode(int hotelCode) {
		this.hotelCode = hotelCode;
	}
	public int getRoomCode() {
		return roomCode;
	}
	public void setRoomCode(int roomCode) {
		this.roomCode = roomCode;
	}
	public String[] getScheduleDaily() {
		return scheduleDaily;
	}
	public void setScheduleDaily(String[] scheduleDaily) {
		this.scheduleDaily = scheduleDaily;
	}
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
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getStartAirCode() {
		return startAirCode;
	}
	public void setStartAirCode(int startAirCode) {
		this.startAirCode = startAirCode;
	}
	public int getEndAirCode() {
		return endAirCode;
	}
	public void setEndAirCode(int endAirCode) {
		this.endAirCode = endAirCode;
	}
	public String getPackagePeopleCnt() {
		return packagePeopleCnt;
	}
	public void setPackagePeopleCnt(String packagePeopleCnt) {
		this.packagePeopleCnt = packagePeopleCnt;
	}
	public int getPackagePrice() {
		return packagePrice;
	}
	public void setPackagePrice(int packagePrice) {
		this.packagePrice = packagePrice;
	}
	public String getPackageImgPath() {
		return packageImgPath;
	}
	public void setPackageImgPath(String packageImgPath) {
		this.packageImgPath = packageImgPath;
	}
	public MultipartFile[] getAttachFile() {
		return attachFile;
	}
	public void setAttachFile(MultipartFile[] attachFile) {
		this.attachFile = attachFile;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

}
