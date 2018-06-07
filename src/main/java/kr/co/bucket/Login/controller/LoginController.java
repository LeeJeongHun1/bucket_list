package kr.co.bucket.Login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bucket.Login.service.LoginService;
import kr.co.bucket.repository.domain.MemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/user/register.do")
	public void loginForm() {}
	
//	@RequestMapping("/logIn.do")
//	public String Login(MemberVO memberVO, ModelMap model) throws Exception {
//		model.addAttribute("member", memberVO);
//		loginService.selectUserById(memberVO.getUserEmail());
//		return "redirect:/main/index.do";
//	}
	
	@RequestMapping("/logout.do")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:loginForm.do";
	}
	
	@RequestMapping("/user/insertUser.do")
	public String insertUser(MemberVO memberVO) throws Exception{
//		System.out.println(request.getParameter("name"));
//		System.out.println(request.getParameter("birth"));
//		System.out.println(request.getParameter("email"));
//		System.out.println(request.getParameter("password"));
//		System.out.println(request.getParameter("auth"));
		System.out.println(memberVO.getName());
		System.out.println(memberVO.getBirth());
		System.out.println(memberVO.getUserEmail());
		System.out.println(memberVO.getPassword());
		System.out.println(memberVO.getUserAuth());
		loginService.insertMember(memberVO);
		return "redirect:/main/index.do";
	}
}
