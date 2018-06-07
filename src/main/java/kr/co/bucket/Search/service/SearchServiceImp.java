package kr.co.bucket.Search.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.AllSearch;
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
	
	public List<SResult> DetailSearch(AllSearch AllSearch)  throws Exception {
		return mapper.detailSearch(AllSearch);
	}
	public List<SResult> SelectSearch(String selectPrice) throws Exception{
		return mapper.selectSearch(selectPrice);
	};
}
