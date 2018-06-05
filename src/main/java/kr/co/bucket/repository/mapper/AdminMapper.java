package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.SearchMemResult;
import kr.co.bucket.repository.domain.SearchMemVO;

public interface AdminMapper {
	public List<SearchMemResult> searchMem(SearchMemVO search);

}
