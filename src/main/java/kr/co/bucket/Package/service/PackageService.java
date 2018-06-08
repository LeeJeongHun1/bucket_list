package kr.co.bucket.Package.service;

import java.util.List;
import java.util.Map;

import kr.co.bucket.repository.domain.AirSearch;
import kr.co.bucket.repository.domain.HotelSearch;

public interface PackageService {
	
	public Map<String, List<AirSearch>> retrieveAir(AirSearch air);
	public List<HotelSearch> retrieveHotel(HotelSearch hotel);
}
