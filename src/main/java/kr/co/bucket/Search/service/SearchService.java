package kr.co.bucket.Search.service;

import java.util.List;

import kr.co.bucket.repository.domain.AllSearch;
import kr.co.bucket.repository.domain.Page;
import kr.co.bucket.repository.domain.SResult;
import kr.co.bucket.repository.domain.Search;

public interface SearchService {
	// 키워드로 검색한 결과
	public List<SResult> Allsearch(Search keyword) throws Exception;
	public List<SResult> DetailSearch(AllSearch AllSearch) throws Exception;
	public List<SResult> SelectSearch(AllSearch AllSearch) throws Exception;
	public List<SResult> departureSearch(AllSearch allSearch) throws Exception;
	// 검색결과에 대한 전체 패키지 개수
	public int count(Search keyword) throws Exception;
	
}
