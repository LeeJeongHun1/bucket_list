package kr.co.bucket.Package.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.AirSearch;
import kr.co.bucket.repository.mapper.PackageMapper;

@Service("packageService")
public class PackageServiceImpl implements PackageService{
	
	@Autowired
	private PackageMapper mapper;

	@Override
	public List<AirSearch> retrieveMember(AirSearch air) {
		return mapper.selectAir(air);
	}

}
