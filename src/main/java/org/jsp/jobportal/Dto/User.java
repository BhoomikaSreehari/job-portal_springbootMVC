package org.jsp.jobportal.Dto;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.OneToMany;
import lombok.Data;

@Data
@Entity
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	String fullname;
	String email;
	long mobile;
	String password;
	LocalDate dob;
	String gender;
	String highestdegree;
	double percentage;
	@Lob
	@Column(columnDefinition = "MEDIUMBLOB")
	byte[] resume;
	int otp;
	boolean verified;
	boolean prime;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	List<Notification> notifications;
	
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
	List<JobApplication> applications;
	
	
}
