package kr.co.bucket.Admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.SearchMemResult;
import kr.co.bucket.repository.domain.SearchMemVO;
import kr.co.bucket.repository.mapper.AdminMapper;

@Service("memberService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminMapper mapper;
	
	public List<SearchMemResult> searchMem(SearchMemVO search){
		return null;
	}
	
	

}
