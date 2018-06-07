package kr.co.bucket.repository.mapper;

import kr.co.bucket.repository.domain.Member;

public interface MemberMapper {

//	public List<MemberVO> selectUser() throws Exception;
	
//	public MemberVO selectUserById(String id) throws Exception;
	
	public void insertMember(Member memberVO) throws Exception;
//	
//	public void updateMember(MemberVO memberVO) throws Exception;
//	
//	public void deleteMember(String id) throws Exception;
	
}
