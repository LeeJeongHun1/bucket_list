package kr.co.bucket.theme.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.Theme;
import kr.co.bucket.repository.mapper.ThemeMapper;

@Service("themeService")
public class ThemeServiceImpl implements ThemeService{

	@Autowired
	private ThemeMapper themeMapper;
	
	@Override
	public List<Theme> selectThemeList() throws Exception {

		return themeMapper.selectThemeList();
	}

}
