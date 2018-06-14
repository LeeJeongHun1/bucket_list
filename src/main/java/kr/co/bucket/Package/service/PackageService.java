package kr.co.bucket.Package.service;

import java.util.List;
import java.util.Map;

import kr.co.bucket.repository.domain.AirSearch;
import kr.co.bucket.repository.domain.HotelSearch;
import kr.co.bucket.repository.domain.Package;
import kr.co.bucket.repository.domain.ThemeSearch;

public interface PackageService {
	
	public Map<String, List<AirSearch>> retrieveAir(AirSearch air);
	public Map<String, Object> retrieveHotel(HotelSearch hotel);
	public List<HotelSearch> detailHotel(HotelSearch hotel);
	public List<ThemeSearch> retrieveTheme(ThemeSearch theme);
	public void insertPackage(Package pack);
}
