package kr.co.bucket.Package.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.bucket.Package.service.PackageService;
import kr.co.bucket.repository.domain.AirSearch;
import kr.co.bucket.repository.domain.HotelSearch;
import kr.co.bucket.repository.domain.Package;
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
	
	@RequestMapping(value="/insertPackage.do", method=RequestMethod.POST)
	public String createPackage(Package p, MultipartHttpServletRequest mRequest) throws Exception {
		if(p.getAttachFile()[0].getSize() != 0){
			for (MultipartFile file : p.getAttachFile()) {
				System.out.println(file.getOriginalFilename());
				file.transferTo(new File("c:/java-lec/bucket_list_git/src/main/webapp/resources/img/" + file.getOriginalFilename()));
				p.setFilePath("/resources/img/" + file.getOriginalFilename());
			}
		}else{
			p.setFilePath("/resources/img/no_img.gif");
		}
		System.out.println(p.getPackagePeopleCnt());
		System.out.println(p.getScheduleDaily().length + "," + p.getScheduleDaily()[0]);
		System.out.println(p.getRoomCode());
		System.out.println(p.getHotelCode());
		System.out.println(p.gettCode().length + "," + p.gettCode()[0]);
		System.out.println(p.getThemeDaily().length + "," + p.getThemeDaily()[0]);
		packageService.insertPackage(p);
		return "redirect:/main/index.do";
	}
}
