package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.Theme;

public interface ThemeMapper {

	List<Theme> selectThemeList() throws Exception;
	
}
