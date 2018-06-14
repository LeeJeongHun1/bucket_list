package kr.co.bucket.Search.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.AllSearch;
import kr.co.bucket.repository.domain.HResult;
import kr.co.bucket.repository.domain.Img;
import kr.co.bucket.repository.domain.Payment;
import kr.co.bucket.repository.domain.Review;
import kr.co.bucket.repository.domain.SResult;
import kr.co.bucket.repository.domain.Search;
import kr.co.bucket.repository.mapper.SearchMapper;

@Service("searchService")
public class SearchServiceImp implements SearchService {
	
	@Autowired
	public SearchMapper mapper;

	public List<SResult> Allsearch(Search keyword) throws Exception {
		return mapper.AllSearch(keyword);		
	}
	
	public List<SResult> DetailSearch(AllSearch allSearch)  throws Exception {
		return mapper.detailSearch(allSearch);
	}
	public List<SResult> SelectSearch(AllSearch allSearch) throws Exception{
		return mapper.selectSearch(allSearch);
	};
	
	public List<SResult> departureSearch(AllSearch allSearch) throws Exception{
		 return mapper.departureSearch(allSearch);
	};
	public int count(Search keyword) throws Exception{
		return mapper.selectCount(keyword);
	}
	public int dCount(AllSearch search) throws Exception{
		return mapper.dSelectCount(search);
	}
	public Map<String, Object> detailBoard(String packageCode) throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("startDate", mapper.detailStart(packageCode));
		map.put("endDate", mapper.detailEnd(packageCode));
		map.put("daily", mapper.detailSchedule(packageCode));
		map.put("stay", mapper.detailStay(packageCode));
		List<HResult> sList = mapper.detailStay(packageCode);
		for(HResult s:sList) {
			System.out.println("호텔이름"+s.getHotelName());
			System.out.println("호텔이미지"+s.getHotelImgPath());
		}
		List<SResult> list = mapper.detailSchedule(packageCode);
		for(SResult s:list) {
			System.out.println("패키지코드" +s.getPackageName());
			System.out.println("테마네임"+s.getThemeName());
			System.out.println("테마이미지"+s.getImgPath());
		}
		return map;
	}

	@Override
	public void reviewRegist(Review review) throws Exception {
		System.out.println(" 리뷰안넘어옴??"+review);
	
		System.out.println(review.getAirEvalScore() +" 별점");
		System.out.println(review.getContent() +"내용 ");
		System.out.println(review.getTitle() +"제목");
		System.out.println(review.getAirEvalScore() +" ");
		mapper.insertReview(review);
		
	}
	
	@Override
	public List<Review> reivewList(String packageCode) throws Exception {
		System.out.println(packageCode);
		List<Review> list = mapper.selectReivewByCode(packageCode);
		System.out.println(list+"리스트");
			for(Review r: list) {
				System.out.println(r.getHotelEvalScore() +"호텔별점");
			}
		return mapper.selectReivewByCode(packageCode);
	}

	@Override
	public void insertPayment(Payment payment) throws Exception {
		System.out.println(payment);
		mapper.insertPay(payment);
	}
	
	public List<Img> imgRepeat() throws Exception{
		List<Img> list = mapper.imgController();
		for(Img i:list) {
			System.out.println(i.getImgPath() +"이미지");
		}
		return mapper.imgController();

     }

}