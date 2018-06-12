package kr.co.bucket.theme.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bucket.theme.service.ThemeService;

@Controller
public class ThemeController {
	
	@Autowired
	private ThemeService themeService;
	
	@RequestMapping("/theme/theme.do")
	public void Theme(Model model) throws Exception{
//		List<Theme> list = themeService.selectThemeList();
		String test = "안녕";

		model.addAttribute("msg", test);
		
	}
}
