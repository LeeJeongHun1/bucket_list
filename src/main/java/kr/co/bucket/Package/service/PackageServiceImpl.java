package kr.co.bucket.Package.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.AirSearch;
import kr.co.bucket.repository.domain.Daily;
import kr.co.bucket.repository.domain.HotelSearch;
import kr.co.bucket.repository.domain.Package;
import kr.co.bucket.repository.domain.Stay;
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

	@Override
	public void insertPackage(Package pack) {
//		mapper.insertPackage(pack);
		for(int i=0; i<pack.getScheduleDaily().length; i++) {
			Daily d = new Daily();
			d.setDailyType("숙박");
			d.setPackageCode(pack.getPackageCode());
			d.setScheduleDaily(pack.getScheduleDaily()[i]);
			mapper.insertDailyByHotel(d);
		}
		for(int i=0; i<pack.getThemeDaily().length; i++) {
			Daily d = new Daily();
			d.setDailyType("테마");
			d.setPackageCode(pack.getPackageCode());
			d.setScheduleDaily(pack.getThemeDaily()[i]);
			d.setThemeCode(pack.gettCode()[i]);
			mapper.insertDailyByTheme(d);
		}
		List<Integer> dCode = mapper.selectDailyCode(pack);
		Stay s = new Stay();
		s.setHotelCode(pack.getHotelCode());
		s.setRoomCode(pack.getRoomCode());
		for (Integer integer : dCode) {
			s.setDailyCode(integer);
			mapper.insertStay(s);
		}
		mapper.insertPackage(pack);
		
	}

}
