package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.MyPackage;

public interface MyPackageMapper {

	public List<MyPackage> selectMyPackageList(String id) throws Exception;
	
}
