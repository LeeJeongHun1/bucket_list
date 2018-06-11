package kr.co.bucket.payment.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bucket.payment.service.PaymentService;
import kr.co.bucket.repository.domain.Member;
import kr.co.bucket.repository.domain.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	@RequestMapping("/user/payment.do")
	public ModelAndView payment(HttpServletRequest request, HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
//		request.getSession();
		Member m = (Member)session.getAttribute("member");
		String id = m.getUserEmail();
		List<Payment> list = paymentService.selectPackage(id);
		for (Payment a : list ) {
			System.out.println("-----------------------------------------------");
			System.out.println("가격  " + a.getPackagePrice());
			System.out.println("패키지 이름 : " + a.getPackageName());
			System.out.println("날짜 : " + a.getPaymentDate());
		}
		mav.setViewName("user/payment");
		mav.addObject("paymentList", list);
		return mav;
	}
	
//	@RequestMapping("myPackage.do")
//	public  ModelAndView myPackageO(HttpServeltRequest requestm HttpSession session) {
//		
//	}
		
}
