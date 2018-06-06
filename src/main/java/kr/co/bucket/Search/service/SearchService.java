package kr.co.bucket.Search.service;

import java.util.List;

import kr.co.bucket.repository.domain.AllSearch;
import kr.co.bucket.repository.domain.SResult;
import kr.co.bucket.repository.domain.Search;

public interface SearchService {
	public List<SResult> Allsearch(Search keyword) throws Exception;
	public List<SResult> DetailSearch(AllSearch AllSearch) throws Exception;

}
