package kr.co.bucket.main.service;

import java.util.List;
import java.util.Map;

import kr.co.bucket.repository.domain.MResult;

public interface MainService {
	public Map<String, List<MResult>> selectPackageList() throws Exception;
	

}
