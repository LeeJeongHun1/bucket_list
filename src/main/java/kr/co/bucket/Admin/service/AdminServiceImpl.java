package kr.co.bucket.Admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.SearchMem;
import kr.co.bucket.repository.domain.SearchMemResult;
import kr.co.bucket.repository.mapper.AdminMapper;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminMapper mapper;
	
	public List<SearchMemResult> searchMem(SearchMem search){
		return mapper.searchMem(search);
	}
	public List<SearchMemResult> listMem(){
		return mapper.listMem();
	}
	@Override
	public List<SearchMemResult> searchPaid(SearchMem search) {
		return mapper.searchPaid(search);
	}
	@Override
	public List<SearchMemResult> searchSum(SearchMem search) {
		return mapper.searchSum(search);
	}
	@Override
	public List<SearchMemResult> searchCnt(SearchMem search) {
		// TODO Auto-generated method stub
		return mapper.searchCnt(search);
	}
	
	

}
