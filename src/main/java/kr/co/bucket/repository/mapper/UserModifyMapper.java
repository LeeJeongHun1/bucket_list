package kr.co.bucket.repository.mapper;

import kr.co.bucket.repository.domain.Member;

public interface UserModifyMapper {

	public void updateUser(Member member) throws Exception;
	
}
