package kr.co.bucket.payment.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bucket.payment.service.PaymentService;
import kr.co.bucket.repository.domain.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	PaymentService paymentService;
	
	@RequestMapping("/user/payment.do")
	public ModelAndView payment(HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("userEmail");
		System.out.println(id);
		List<Payment> list = paymentService.selectPackage(id);
		for (Payment a : list ) {
			System.out.println(a.getPackagePrice());
//			System.out.println(a.getPackageName());
//			System.out.println(a.getPaymentDate());
		}
		mav.setViewName("user/payment");
		mav.addObject("list", list);
		return mav;
	}
}
