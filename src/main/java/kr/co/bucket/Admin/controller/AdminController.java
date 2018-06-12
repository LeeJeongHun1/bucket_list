package kr.co.bucket.Admin.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bucket.Admin.service.AdminService;
import kr.co.bucket.repository.domain.SearchMem;
import kr.co.bucket.repository.domain.SearchMemResult;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/adminMem.do")
	public String adminMemMove() {
		/*SearchMem search = new SearchMem();
		search.setName("김");
		//search.setEamil("test@naver.com");
		search.setMiniBirth("1990");
		search.setMaxBirth("1994");
		search.setMiniRegDate("20180603");
		search.setMaxRegDate("20180605");
		
		List<SearchMemResult> list =  adminService.searchMem(search);
		
		System.out.println(list.size());
		for(SearchMemResult s:list) {
			System.out.println(s.getName());
		}
		*/
		return "admin/adminMem";
	}
	
	@RequestMapping("/adminMemPackage.do")
	public String adminMemPackMove() {
		return "admin/adminMemPackage";
	}
	
	@RequestMapping("/adminPackage.do")
	public String adminPackMove() {
		return "admin/adminPackage";
	}
	
	@RequestMapping("/adminPaid.do")
	public String adminPaidMove() {
		return "admin/adminPaid";
	}
	
	@RequestMapping("/ajaxMem.json")
	@ResponseBody
	public List<SearchMemResult> ajaxMem(SearchMem search) {
		System.out.println(search.getName());
		System.out.println(search.getMiniBirth());
		System.out.println(search.getMiniDate());
		System.out.println(search.getMaxDate());
		List<SearchMemResult> list =  adminService.searchMem(search);
		
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
		
		for(SearchMemResult s : list) {
			System.out.println(sdf.format(s.getReg_Date()));
//			System.out.println(s.getReg_Date().toString());
			StringBuffer sb = new StringBuffer(s.getBirth());
			sb.insert(4, "년");
			sb.insert(7, "월");
			sb.insert(10, "일");
			s.setBirth(sb.toString());
		}
		
		return list;
	}
	
	@RequestMapping("/ajaxPaid.json")
	@ResponseBody
	public List<SearchMemResult> ajaxPaid(SearchMem search) {
		System.out.println(search.getKeyword());
		System.out.println(search.getMiniDate());
		System.out.println(search.getMaxDate());
		List<SearchMemResult> list =  adminService.searchPaid(search);
		return list;
	}
	
	@RequestMapping("/ajaxSum.json")
	@ResponseBody
	public List<SearchMemResult> ajaxSum(SearchMem search){
		System.out.println(search.getKeyword());
		System.out.println(search.getMiniDate());
		System.out.println(search.getMaxDate());
		List<SearchMemResult> list =  adminService.searchSum(search);
		return list;
	}
	
	@RequestMapping("/ajaxCnt.json")
	@ResponseBody
	public List<SearchMemResult> ajaxCnt(SearchMem search){
		System.out.println(search.getKeyword());
		System.out.println(search.getMiniDate());
		System.out.println(search.getMaxDate());
		List<SearchMemResult> list =  adminService.searchCnt(search);
		return list;
	}

	@RequestMapping("/ajaxPac.json")
	@ResponseBody
	public List<SearchMemResult> ajaxPac(SearchMem search) {
		System.out.println(search.getName());
		System.out.println(search.getTheme());
		System.out.println(search.getMiniDate());
		System.out.println(search.getMaxDate());
		System.out.println(search.getMiniPrice());
		System.out.println(search.getMaxPrice());
		System.out.println(search.getApvl());
		System.out.println(search.getTheme());
		
		List<SearchMemResult> list =  adminService.searchPac(search);
		
		//System.out.println(list.size());
		
		for(int i = 0; i < list.size()-1; i++) {
			SearchMemResult s1 = list.get(i);
			SearchMemResult s2 = list.get(i+1);
			
			if(s1.getPackage_Name().equals(s2.getPackage_Name())) {
				s1.setTheme_Type(s1.getTheme_Type().concat("/"+s2.getTheme_Type()));
				list.remove(i+1);
				i--;
			}
			System.out.println(s1.getPackage_Name());
		}
		
		for(SearchMemResult s :list) {
			System.out.println(s.getTheme_Type());
			System.out.println(s.getPackage_Name());
		}
		
		System.out.println(list.size());
		return list;
	}
	
	@RequestMapping("/ajaxAdminPac.json")
	@ResponseBody
	public List<SearchMemResult> ajaxAminPac(SearchMem search) {
		System.out.println(search.getName());
		System.out.println(search.getTheme());
		System.out.println(search.getMiniDate());
		System.out.println(search.getMaxDate());
		System.out.println(search.getMiniPrice());
		System.out.println(search.getMaxPrice());
		System.out.println(search.getApvl());
		System.out.println(search.getTheme());
		
		List<SearchMemResult> list =  adminService.searchAdminPac(search);
		
		//System.out.println(list.size());
		
		for(int i = 0; i < list.size()-1; i++) {
			SearchMemResult s1 = list.get(i);
			SearchMemResult s2 = list.get(i+1);
			
			if(s1.getPackage_Name().equals(s2.getPackage_Name())) {
				s1.setTheme_Type(s1.getTheme_Type().concat("/"+s2.getTheme_Type()));
				list.remove(i+1);
				i--;
			}
			System.out.println(s1.getPackage_Name());
		}
		
		for(SearchMemResult s :list) {
			System.out.println(s.getTheme_Type());
			System.out.println(s.getPackage_Name());
		}
		
		System.out.println(list.size());
		return list;
	}
	
	
	/*
	@RequestMapping("/resBody.json")
	public 
	*/
	
	
	

}
