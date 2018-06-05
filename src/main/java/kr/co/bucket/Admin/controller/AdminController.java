package kr.co.bucket.Admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bucket.Admin.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/admin/adminMem.do")
	public String adminMemMove() {
		return "admin/adminMem";
	}
	
	@RequestMapping("/admin/adminMemPackage.do")
	public String adminMemPackMove() {
		return "admin/adminMemPackage";
	}
	
	@RequestMapping("/admin/adminPackage.do")
	public String adminPackMove() {
		return "admin/adminPackage";
	}
	
	@RequestMapping("/admin/adminPaid.do")
	public String adminPaidMove() {
		return "admin/adminPaid";
	}
	
	
	
	

}
