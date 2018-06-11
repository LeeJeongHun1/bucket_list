package kr.co.bucket.Package.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.AirSearch;
import kr.co.bucket.repository.domain.HotelSearch;
import kr.co.bucket.repository.domain.ThemeSearch;
import kr.co.bucket.repository.mapper.PackageMapper;

@Service("packageService")
public class PackageServiceImpl implements PackageService{
	
	@Autowired
	private PackageMapper mapper;

	@Override
	public Map<String, List<AirSearch>> retrieveAir(AirSearch air) {
		Map<String, List<AirSearch>> a = new HashMap<>(); 
		a.put("endAir", mapper.selectEndAir(air));
		a.put("startAir", mapper.selectStartAir(air));
		return a;
	}

	@Override
	public Map<String, Object> retrieveHotel(HotelSearch hotel) {
		Map<String, Object> h = new HashMap<>();
		h.put("hotel", mapper.selectHotelBySearch(hotel));
		h.put("schedule", mapper.selectSchedule(hotel));
		h.put("theme", mapper.selectThemeByCity(hotel));
		return h;
	}

	@Override
	public List<HotelSearch> detailHotel(HotelSearch hotel) {
		return mapper.selectHotelByCode(hotel);
	}

	@Override
	public List<ThemeSearch> retrieveTheme(ThemeSearch theme) {
		return mapper.selectThemeByType(theme);
	}

}
