package kr.co.bucket.Search.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.AllSearch;
import kr.co.bucket.repository.domain.Page;
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
}
