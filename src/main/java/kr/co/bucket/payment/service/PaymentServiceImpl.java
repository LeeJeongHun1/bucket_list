package kr.co.bucket.payment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.Payment;
import kr.co.bucket.repository.mapper.PaymentMapper;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentMapper paymentMapper;
	
	public List<Payment> selectPackage(String id) throws Exception {
		return paymentMapper.selectPackage(id);
	}

}
