package kr.co.bucket.repository.mapper;

import kr.co.bucket.repository.domain.Member;

public interface MemberMapper {

//	public List<MemberVO> selectUser() throws Exception;
	
	public Member selectUserById(Member member) throws Exception;
	
	public void insertMember(Member memberVO) throws Exception;
//	
	public void updateMember(Member memberVO) throws Exception;
//	
//	public void deleteMember(String id) throws Exception;
	
}
