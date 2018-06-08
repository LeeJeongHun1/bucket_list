package kr.co.bucket.repository.domain;

public class Page {

	private int pageNo;
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
}
