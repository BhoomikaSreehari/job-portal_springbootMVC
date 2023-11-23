package org.jsp.jobportal.Dto;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.stereotype.Component;

import jakarta.annotation.Generated;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.Data;
@Data
@Entity
public class Recruiter {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
String fullname;
String email;
long mobile;
String password;
String gender;
String companyname;
String companylocation;
int otp;
boolean verified;
LocalDateTime otpCreatedTime;
@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
List <Job> jobs;

}
