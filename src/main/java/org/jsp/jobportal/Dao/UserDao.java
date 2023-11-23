package org.jsp.jobportal.Dao;

import org.jsp.jobportal.Dto.Notification;
import org.jsp.jobportal.Dto.PaymentDetails;
import org.jsp.jobportal.Dto.Recruiter;
import org.jsp.jobportal.Dto.User;
import org.jsp.jobportal.Repository.NotificationRepository;
import org.jsp.jobportal.Repository.PaymentDetailsRepository;
import org.jsp.jobportal.Repository.RecruiterRepository;
import org.jsp.jobportal.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class UserDao {
	@Autowired
	UserRepository userRepository;
	@Autowired
	PaymentDetailsRepository paymentdetailsrepository;
	@Autowired
	NotificationRepository notificationRepository;
	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	public User findByMobile(long mobile) {
		return userRepository.findByMobile(mobile);
	}
	public void save(User user) {
		userRepository.save(user);
	}

	public User findById(int id) {
		return userRepository.findById(id).orElse(null);
	}
public PaymentDetails save(PaymentDetails details) {
	return paymentdetailsrepository.save(details);
}

public PaymentDetails findPaymentById(int id) {
	return paymentdetailsrepository.findById(id).orElse(null);
}
public void deleteNotification(int id) {
	 notificationRepository.deleteById(id);
}

public Notification findNotification(int id) {
	return notificationRepository.findById(id).orElse(null);
}
}
