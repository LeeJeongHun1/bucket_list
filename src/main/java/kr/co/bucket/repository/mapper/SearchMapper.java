package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.AllSearch;
import kr.co.bucket.repository.domain.HResult;
import kr.co.bucket.repository.domain.Img;
import kr.co.bucket.repository.domain.Payment;
import kr.co.bucket.repository.domain.Review;
import kr.co.bucket.repository.domain.SResult;
import kr.co.bucket.repository.domain.Search;

public interface SearchMapper {
	public List<SResult> AllSearch(Search keyword);
	public List<SResult> detailSearch(AllSearch search);
	public List<SResult> selectSearch(AllSearch search);
	public List<SResult> departureSearch(AllSearch search);
	public int selectCount(Search keyword);
	public int dSelectCount(AllSearch search);
	public SResult detailStart(String packageCode);
	public SResult detailEnd(String packageCode);
	public List<SResult> detailSchedule(String packageCode);
	public List<HResult> detailStay(String packageCode);

	// 리뷰
	public void insertReview(Review review);
	public List<Review> selectReivewByCode(String packageCode);
	
	//결제
	public void insertPay(Payment payment);
	
	//이미지
	public List<Img> imgController();
	
}
