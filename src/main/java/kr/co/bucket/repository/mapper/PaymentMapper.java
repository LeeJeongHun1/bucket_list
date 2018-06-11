package kr.co.bucket.repository.mapper;

import java.util.List;

import kr.co.bucket.repository.domain.Payment;

public interface PaymentMapper {
	public List<Payment> selectPackage(String id) throws Exception;
}
