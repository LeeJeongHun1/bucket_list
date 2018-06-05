package kr.co.bucket.LoginController;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping("/user/register.do")
	public void loginForm() {}
	
	@RequestMapping("/logIn.do")
	public String Login(HttpSession session) {
		
		return "redirect:/index.jsp";
	}
	
	@RequestMapping("/logout.do")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:loginForm.do";
	}
}
