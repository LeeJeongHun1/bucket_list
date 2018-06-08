package kr.co.bucket.Admin.controller;

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

	

	
	/*
	@RequestMapping("/resBody.json")
	public 
	*/
	
	
	

}
