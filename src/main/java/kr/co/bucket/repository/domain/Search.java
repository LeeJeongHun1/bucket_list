package kr.co.bucket.repository.domain;

public class Search {
	private String keyword;
	private String pack;
	private String packageCode;
	public String getPackageCode() {
		return packageCode;
	}
	public void setPackageCode(String packageCode) {
		this.packageCode = packageCode;
	}

	private int pageNo = 1;
	private int listSize = 5;

	public int getBegin() {
		return (pageNo -1) * listSize + 1;
	} // 규칙을 찾음 . 시작 
	public int getEnd() {
		return pageNo * listSize;
	} // 페이지 끝
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public String getPack() {
		return pack;
	}

	public void setPack(String pack) {
		this.pack = pack;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
}
