package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.AirSearch;

public interface PackageMapper {
	public List<AirSearch> selectAir(AirSearch airSearch);
}
