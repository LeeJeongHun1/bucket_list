package kr.co.bucket.payment.service;

import java.util.List;

import kr.co.bucket.repository.domain.Payment;

public interface PaymentService {

	public List<Payment> selectPackage(String id) throws Exception;

}
