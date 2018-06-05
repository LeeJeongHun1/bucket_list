package kr.co.bucket.Admin.service;

import java.util.List;

import kr.co.bucket.repository.domain.SearchMemResult;
import kr.co.bucket.repository.domain.SearchMemVO;

public interface AdminService {
	List<SearchMemResult> searchMem(SearchMemVO search);
	

}
