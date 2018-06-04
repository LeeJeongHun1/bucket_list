package kr.co.bucket.PackageController;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/ajax")
public class PackageController {
	
	@RequestMapping("/ajax.json")
	public String test(){
		
		return null;
	}
}
