package kr.co.bucket.myPackage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPackageController {
	@RequestMapping("/user/myPackage.do")
	public void MyPackage() {}
}
