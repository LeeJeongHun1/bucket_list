package kr.co.bucket.main.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.MResult;
import kr.co.bucket.repository.mapper.MainMapper;

@Service("mainService")
public class MainServiceImpl implements MainService{
	@Autowired
	private MainMapper mapper;
	
	public Map<String, List<MResult>> selectPackageList() throws Exception{
		Map<String, List<MResult>> map = new HashMap<>();
		map.put("popular", mapper.popularPackage());
		map.put("recommend", mapper.recommendPackage());
		map.put("season", mapper.seasonPackage());
		List<MResult> list= mapper.popularPackage();
		for(MResult m:list) {
			System.out.println(m.getPackageName()+"패키지네임메인");
		}
		return map;
	};
	
/*	public List<Img> imgRepeat() throws Exception{
		List<Img> list = mapper.imgController();
		for(Img i:list) {
			System.out.println(i.getImgPath() +"이미지");
		}
		return mapper.imgController();
	}*/
	
	

}
