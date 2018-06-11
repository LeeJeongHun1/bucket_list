package kr.co.bucket.repository.domain;

public class Hotel {
	private String hotelCode;
	private String hotelName;
	private String hotelImgPath;
	private String roomPrice;
	private String roomName;
	
	public String getHotelCode() {
		return hotelCode;
	}
	public void setHotelCode(String hotelCode) {
		this.hotelCode = hotelCode;
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
	public String getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	
}
