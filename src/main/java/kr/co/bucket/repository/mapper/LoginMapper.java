package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.MemberVO;

public interface LoginMapper {

	public List<MemberVO> selectUser() throws Exception;
	
	public MemberVO selectUserById(String id) throws Exception;
	
	public void insertMember(MemberVO memberVO) throws Exception;
	
	public void updateMember(MemberVO memberVO) throws Exception;
	
	public void deleteMember(String id) throws Exception;
	
}
