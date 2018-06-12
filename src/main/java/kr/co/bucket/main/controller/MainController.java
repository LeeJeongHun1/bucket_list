package kr.co.bucket.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bucket.main.service.MainService;

@Controller
public class MainController {

	@Autowired
	private MainService mainService;
	
	@RequestMapping("/main/index.do")
	public void index(Model model) throws Exception{
		model.addAttribute("pack",mainService.selectPackageList());
		//model.addAttribute("img",mainService.imgRepeat());
	System.out.println(model +"확인");
	}
	
	@RequestMapping("/user/contact")
	public void contact() {}
	
	@RequestMapping("/main/error.do")
	public void error(){ }
}
