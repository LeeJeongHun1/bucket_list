package kr.co.bucket.userModify.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bucket.repository.domain.Member;
import kr.co.bucket.repository.mapper.UserModifyMapper;

@Service("userModifyService")
public class UserModifyServiceImpl implements UserModifyService{
	
	@Autowired
	UserModifyMapper userModifyMapper;
	
	@Override
	public void updateUser(Member member) throws Exception {
		userModifyMapper.updateUser(member);
	}

}
