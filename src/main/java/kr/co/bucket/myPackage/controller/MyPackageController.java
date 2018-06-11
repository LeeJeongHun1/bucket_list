package kr.co.bucket.myPackage.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bucket.myPackage.service.MyPackageService;
import kr.co.bucket.repository.domain.Member;
import kr.co.bucket.repository.domain.MyPackage;

@Controller
public class MyPackageController {
	
	@Autowired
	private MyPackageService myPackageService;
	
	@RequestMapping("/user/myPackage.do")
	public ModelAndView MyPackage(HttpServletRequest request, HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		Member mp = (Member)session.getAttribute("member");
		String id = mp.getUserEmail();
		System.out.println(id);
		List<MyPackage> mypackage = myPackageService.selectMyPackageList(id);
		for (MyPackage m : mypackage) {
			System.out.println(m.getPackageName());
			System.out.println(m.getPackagePrice());
			System.out.println(m.getRegDate());
			System.out.println(m.getAcceptYN());
		}
		mav.setViewName("user/myPackage");
		mav.addObject("mypackage", mypackage);
		return mav;
	}
}
