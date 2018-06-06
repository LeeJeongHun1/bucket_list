package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.AllSearch;
import kr.co.bucket.repository.domain.SResult;
import kr.co.bucket.repository.domain.Search;

public interface SearchMapper {
	public List<SResult> AllSearch(Search keyword);
	public List<SResult> detailSearch(AllSearch search);
}
