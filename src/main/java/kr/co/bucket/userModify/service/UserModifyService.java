package kr.co.bucket.userModify.service;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bucket.repository.domain.Member;
@Service
public interface UserModifyService {

	public void updateUser(Member member) throws Exception;

}
