package org.jsp.jobportal.Helper;

import java.io.UnsupportedEncodingException;

import org.jsp.jobportal.Dto.Recruiter;
import org.jsp.jobportal.Dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Service
public class EmailLogic {
@Autowired
JavaMailSender mailSender;
	public void sendOtp(Recruiter recruiter) throws UnsupportedEncodingException, MessagingException {
		MimeMessage message=mailSender.createMimeMessage();
		MimeMessageHelper helper=new MimeMessageHelper(message);
		helper.setFrom("bhoomikusu12@gmail.com","Job-portal");
		helper.setTo(recruiter.getEmail());
		helper.setSubject("verify otp");
		helper.setText("your otp is:"+recruiter.getOtp());
		
		mailSender.send(message);
	}
	public void sendOtp(User user) throws MessagingException, UnsupportedEncodingException {
		MimeMessage message=mailSender.createMimeMessage();
		MimeMessageHelper helper=new MimeMessageHelper(message);
		
		helper.setFrom("bhoomikusu12@gmail.com","Job Portal");
		helper.setTo(user.getEmail());
		helper.setSubject("Verify otp");
		helper.setText("Your Otp is : "+user.getOtp());
		
		mailSender.send(message);
}
}
