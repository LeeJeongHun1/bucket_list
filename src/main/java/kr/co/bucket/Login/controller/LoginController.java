package kr.co.bucket.Login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bucket.Login.service.LoginService;
import kr.co.bucket.repository.domain.MemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/user/register.do")
	public void loginForm() {}
	
	@RequestMapping("/logIn.do")
	public String Login(MemberVO memberVO, ModelMap model) throws Exception {
		model.addAttribute("member", memberVO);
		loginService.selectUserById(memberVO.getUserEmail());
		return "redirect:/main/index.do";
	}
	
	@RequestMapping("/logout.do")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:loginForm.do";
	}
	
	@RequestMapping("/insertUser.do")
	public String insertUser() {
		
		return "";
	}
}
