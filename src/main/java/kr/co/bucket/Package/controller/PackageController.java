package kr.co.bucket.Package.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("/main")
public class PackageController {
	
	@RequestMapping("/ajax.json")
	public String test(){
		
		return null;
	}
	
	@RequestMapping("/main.do")
	public void main() {
		
	}
}
