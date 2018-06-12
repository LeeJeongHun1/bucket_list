package kr.co.bucket.theme.service;

import java.util.List;

import kr.co.bucket.repository.domain.Theme;

public interface ThemeService {

	List<Theme> selectThemeList() throws Exception;

}
