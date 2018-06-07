package kr.co.bucket.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.Member;
import kr.co.bucket.repository.mapper.MemberMapper;

@Service("loginService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper loginMapper;
	
//	public List<MemberVO> selectUser() throws Exception {
//		return loginMapper.selectUser();
//	}

	public Member selectUserById(Member member) throws Exception {
		return loginMapper.selectUserById(member);
	}

	public void insertMember(Member memberVO) throws Exception {
		loginMapper.insertMember(memberVO);
	}
//
//	public void updateMember(MemberVO memberVO) throws Exception {
//		
//	}
//
//	public void deleteMember(String id) throws Exception {
//		
//	}
	
}
