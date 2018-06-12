package kr.co.bucket.Search.service;

import java.util.List;
import java.util.Map;

import kr.co.bucket.repository.domain.AllSearch;
import kr.co.bucket.repository.domain.Img;
import kr.co.bucket.repository.domain.Payment;
import kr.co.bucket.repository.domain.Review;
import kr.co.bucket.repository.domain.SResult;
import kr.co.bucket.repository.domain.Search;

public interface SearchService {
	// 키워드로 검색한 결과
	public List<SResult> Allsearch(Search keyword) throws Exception;
	public List<SResult> DetailSearch(AllSearch AllSearch) throws Exception;
	public List<SResult> SelectSearch(AllSearch AllSearch) throws Exception;
	public List<SResult> departureSearch(AllSearch allSearch) throws Exception;
	public Map<String,Object> detailBoard(String packageCode) throws Exception;
	// 검색결과에 대한 전체 패키지 개수
	public int count(Search keyword) throws Exception;
	
	// 리뷰
	public void reviewRegist(Review review) throws Exception;
	public List<Review> reivewList(String packageCode) throws Exception;
	
	//결제
	public void insertPayment(Payment payment) throws Exception;
	
	public List<Img> imgRepeat() throws Exception;
}
