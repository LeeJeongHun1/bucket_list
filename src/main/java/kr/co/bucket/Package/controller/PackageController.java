package kr.co.bucket.Package.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bucket.Package.service.PackageService;
import kr.co.bucket.repository.domain.AirSearch;

@Controller
@RequestMapping("/package")
public class PackageController {
	
	@Autowired
	private PackageService packageService;
	
	@RequestMapping("/createPackage.do")
	public void createMypackage() {
		
	}
	
	@RequestMapping("/airSearch.json")
	@ResponseBody
	public List<AirSearch> airSearch(AirSearch air){
		System.out.println("ajax 통신");
		return packageService.retrieveMember(air);
	}
}
