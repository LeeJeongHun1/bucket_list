package kr.co.bucket.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/main/index.do")
	public void index(){ }
	
	@RequestMapping("/user/contact")
	public void contact() {}
}
