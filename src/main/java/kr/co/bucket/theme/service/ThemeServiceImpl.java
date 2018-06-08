package kr.co.bucket.theme.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.bucket.repository.mapper.ThemeMapper;

public class ThemeServiceImpl implements ThemeService{

	@Autowired
	ThemeMapper themeMapper;
	
	@Override
	public List<Map> selectThemeList() throws Exception {
		
		return themeMapper.selectThemeList();
	}

}
