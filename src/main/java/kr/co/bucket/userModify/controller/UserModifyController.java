package kr.co.bucket.userModify.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bucket.repository.domain.Member;
import kr.co.bucket.userModify.service.UserModifyService;

@Controller
public class UserModifyController {
	
	@Autowired
	private UserModifyService userModifyService;
	
	
	@RequestMapping("/user/userModify.do")
	public ModelAndView userModify(Member member) throws Exception{
		ModelAndView mav = new ModelAndView();
		System.out.println("name : " + member.getName());
		System.out.println("email : " + member.getUserEmail());
		System.out.println("password : " + member.getPassword());
		userModifyService.updateUser(member);
		mav.setViewName("user/userUpdate");
		mav.addObject("name", member.getName());
		return mav;
	}
	
}
