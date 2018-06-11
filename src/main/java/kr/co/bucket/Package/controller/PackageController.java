package kr.co.bucket.Package.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bucket.Package.service.PackageService;
import kr.co.bucket.repository.domain.AirSearch;
import kr.co.bucket.repository.domain.HotelSearch;
import kr.co.bucket.repository.domain.ThemeSearch;

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
	public Map<String, List<AirSearch>> airSearch(AirSearch air){
		return packageService.retrieveAir(air);
	}
	
	@RequestMapping("/hotelSearch.json")
	@ResponseBody
	public Map<String, Object> hotelSearch(HotelSearch hotel){
		return packageService.retrieveHotel(hotel);
	}
	
	@RequestMapping("/hotelDetail.json")
	@ResponseBody
	public List<HotelSearch> hotelDetail(HotelSearch hotel){
		return packageService.detailHotel(hotel);
	}
	
	@RequestMapping("/themeSearch.json")
	@ResponseBody
	public List<ThemeSearch> themeSearch(ThemeSearch theme){
		return packageService.retrieveTheme(theme);
	}
}
