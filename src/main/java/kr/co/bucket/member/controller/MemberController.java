package kr.co.bucket.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bucket.member.service.MemberService;
import kr.co.bucket.repository.domain.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService loginService;
	
	
	
	@RequestMapping("/user/loginPost.json")
	@ResponseBody
	public String loginPOST(Member member, Model model, HttpServletRequest request) throws Exception{
		Member m1 = loginService.selectUserById(member);

		String msg = "";

		if (m1 == null) {
			msg = "아이디가 잘못되었습니다.";
		} else if (!m1.getPassword().equals(member.getPassword())) {
			msg = "비밀번호가 잘못되었습니다.";
		} else {
			System.out.println(member);
			msg = "로그인 성공";
//			model.addAttribute("member", m1);
			HttpSession session = request.getSession();
			session.setAttribute("member", member);
			return "/main/index.do";
		}
		return msg;
	}
	
	
	
	@RequestMapping("/user/register.do")
	public void loginForm() {}
//	
//	@RequestMapping("/user/logIn.do")
//	public String Login(Member memberVO, HttpServletRequest request, Model model) throws Exception {
//		String msg = "";
//		if (memberVO.getUserEmail().equals(request.getParameter("userEmail"))) {
//			msg = "아이디를 확인해주세요";
//		} else if (memberVO.getPassword().equals(request.getParameter("password"))) {
//			HttpSession session = request.getSession();
//			session.setAttribute("user", memberVO.getUserEmail());
//			
//		} else {
//			msg = "패스워드를 확인해주세요";
//		}
//		
//		model.addAttribute("message", msg);
//		return "redirect:/main/index.do";
//		
//	}
	
	@RequestMapping("/user/logout.do")
	public String logOut(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/main/index.do";
	}
	
	@RequestMapping("/user/insertUser.do")
	public String insertUser(Member memberVO) throws Exception{
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
	
	@RequestMapping("/user/userUpdate.do")
	public void updateMember() {}
}
