package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.SearchMem;
import kr.co.bucket.repository.domain.SearchMemResult;

public interface AdminMapper {
	public List<SearchMemResult> searchMem(SearchMem search);
	public List<SearchMemResult> searchPaid(SearchMem search);
	public List<SearchMemResult> searchSum(SearchMem search);
	public List<SearchMemResult> searchCnt(SearchMem search);
	public List<SearchMemResult> searchPac(SearchMem search); 
	public List<SearchMemResult> searchAdminPac(SearchMem search); 
	public List<SearchMemResult> listMem();
	
}
