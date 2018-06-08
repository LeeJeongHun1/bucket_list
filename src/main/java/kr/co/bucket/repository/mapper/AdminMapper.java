package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.SearchMem;
import kr.co.bucket.repository.domain.SearchMemResult;

public interface AdminMapper {
	public List<SearchMemResult> searchMem(SearchMem search);
	public List<SearchMemResult> searchPaid(SearchMem search);
	public List<SearchMemResult> listMem();
}
