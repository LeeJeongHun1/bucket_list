package kr.co.bucket.Package.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PackageController {
	
	@RequestMapping("/ajax.json")
	public String test(){
		
		return null;
	}
	
	@RequestMapping("/index.do")
	public void main() {
		
	}
}
