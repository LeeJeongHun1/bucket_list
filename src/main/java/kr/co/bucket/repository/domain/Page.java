package kr.co.bucket.repository.domain;

public class Page {
	public static void main(String[] args) {
		Page p = new Page();
		p.setPageNo(3);
		
		System.out.println(p.getBegin());
		System.out.println(p.getEnd());
	}
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
}
