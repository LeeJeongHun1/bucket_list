package kr.co.bucket.member.service;

import kr.co.bucket.repository.domain.Member;

public interface MemberService {

//	public List<MemberVO> selectUser() throws Exception;
	
	public Member selectUserById(Member member) throws Exception;
//	
	public void insertMember(Member memberVO) throws Exception;
//	
//	public void updateMember(MemberVO memberVO) throws Exception;
//	
//	public void deleteMember(String id) throws Exception;
}
