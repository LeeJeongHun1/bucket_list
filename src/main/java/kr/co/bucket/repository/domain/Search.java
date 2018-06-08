package kr.co.bucket.repository.domain;

public class Search {
	private String keyword;
	private String pack;
	private int pageNo = 1;

	public int getBegin() {
		return (pageNo -1) * 10 + 1;
	} // 규칙을 찾음 . 시작 
	public int getEnd() {
		return pageNo * 10;
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
