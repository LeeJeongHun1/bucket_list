package kr.co.bucket.myPackage.service;

import java.util.List;

import kr.co.bucket.repository.domain.MyPackage;

public interface MyPackageService {

	public List<MyPackage> selectMyPackageList(String id) throws Exception;

}
