package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.Img;
import kr.co.bucket.repository.domain.MResult;

public interface MainMapper {
	public List<MResult> popularPackage();
	public List<MResult> recommendPackage();
	public List<MResult> seasonPackage();
	public List<Img> imgController();
}
