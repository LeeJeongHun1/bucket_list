package kr.co.bucket.payment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bucket.repository.domain.Payment;
import kr.co.bucket.repository.mapper.PaymentMapper;

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentMapper paymentMapper;
	
	public List<Payment> selectPackage(String id) throws Exception {
		List<Payment> list = paymentMapper.selectPackage(id);
		System.out.println("임플 아이디 확인 : " + id);
		for(Payment p:list) {
			System.out.println(p.getPackageName()+"이름");
			System.out.println(p.getPackagePrice()+"가격");
			
		}
		return paymentMapper.selectPackage(id);
	}


}
