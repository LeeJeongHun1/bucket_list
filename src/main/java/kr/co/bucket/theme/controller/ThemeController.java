package kr.co.bucket.theme.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bucket.theme.service.ThemeService;

@Controller
public class ThemeController {
	
	@Autowired
	ThemeService themeService;
	
	@RequestMapping("/user/theme.do")
	public String theme(Model model) throws Exception {
		List<Map> themeList = themeService.selectThemeList();
		model.addAttribute("themeList", themeList);
		
		return "user/theme.do";
	}
	
//	@RequestMapping("/user/theme.do")
//	public String theme(ModelMap model) throws Exception {
//		List<Map> themeList = themeService.selectThemeList();
//		model.addAttribute("themeList", themeList);
//		return "/user/theme.do";
//	}
	
	
}
