package kr.co.bucket.myPackage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.MyPackage;
import kr.co.bucket.repository.mapper.MyPackageMapper;

@Service("myPackageService")
public class MyPackageServiceImpl implements MyPackageService{

	@Autowired
	private MyPackageMapper myPackageMapper;

	@Override
	public List<MyPackage> selectMyPackageList(String id) throws Exception {
		return myPackageMapper.selectMyPackageList(id);
	}
	
	
	
}
