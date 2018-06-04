package kr.co.bucket.Package.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class PackageController {
	
	@RequestMapping("/ajax.json")
	public String test(){
		
		return null;
	}
	
	@RequestMapping("/view/index.do")
	public void main() {
		
	}
}
