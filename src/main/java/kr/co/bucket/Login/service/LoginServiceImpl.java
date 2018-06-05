package kr.co.bucket.Login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.MemberVO;
import kr.co.bucket.repository.mapper.LoginMapper;

@Service("loginService")
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginMapper loginMapper;
	
//	public List<MemberVO> selectUser() throws Exception {
//		return loginMapper.selectUser();
//	}

	public MemberVO selectUserById(String id) throws Exception {
		return loginMapper.selectUserById(id);
	}
//
//	public void insertMember(MemberVO memberVO) throws Exception {
//		
//	}
//
//	public void updateMember(MemberVO memberVO) throws Exception {
//		
//	}
//
//	public void deleteMember(String id) throws Exception {
//		
//	}
	
}
