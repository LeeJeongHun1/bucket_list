package kr.co.bucket.Admin.service;

import java.util.List;

import kr.co.bucket.repository.domain.SearchMem;
import kr.co.bucket.repository.domain.SearchMemResult;

public interface AdminService {
	List<SearchMemResult> searchMem(SearchMem search);
	public List<SearchMemResult> searchPaid(SearchMem search);
	public List<SearchMemResult> listMem();
	

}
