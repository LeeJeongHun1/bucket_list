package kr.co.bucket.repository.mapper;
import java.util.List;

import kr.co.bucket.repository.domain.AirSearch;
import kr.co.bucket.repository.domain.Daily;
import kr.co.bucket.repository.domain.HotelSearch;
import kr.co.bucket.repository.domain.Package;
import kr.co.bucket.repository.domain.Schedule;
import kr.co.bucket.repository.domain.Stay;
import kr.co.bucket.repository.domain.ThemeSearch;

public interface PackageMapper {
	public List<AirSearch> selectStartAir(AirSearch airSearch);
	public List<AirSearch> selectEndAir(AirSearch airSearch);
	public List<HotelSearch> selectHotelBySearch(HotelSearch hotel);
	public Schedule selectSchedule(HotelSearch hotel);
	public List<HotelSearch> selectHotelByCode(HotelSearch hotel);
	public List<ThemeSearch> selectThemeByCity(HotelSearch hotel);
	public List<ThemeSearch> selectThemeByType(ThemeSearch theme);
	public void insertPackage(Package pack);
	public void insertDailyByHotel(Daily daily);
	public void insertDailyByTheme(Daily daily);
	public int selectDailyMax();
	public List<Integer> selectDailyCode(Package pack);
	public void insertStay(Stay stay);
}
