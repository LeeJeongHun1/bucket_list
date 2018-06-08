package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.AirSearch;
import kr.co.bucket.repository.domain.HotelSearch;

public interface PackageMapper {
	public List<AirSearch> selectStartAir(AirSearch airSearch);
	public List<AirSearch> selectEndAir(AirSearch airSearch);
	public List<HotelSearch> selectHotelBySearch(HotelSearch hotel);
}
