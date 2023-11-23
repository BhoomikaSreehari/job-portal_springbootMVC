package org.jsp.jobportal.Dto;
import java.time.LocalDateTime;
import java.util.List;

import org.jsp.jobportal.Helper.JobStatus;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import lombok.Data;
@Data
@Entity
public class JobApplication {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	LocalDateTime appliedDate;
	JobStatus jobStatus;
	LocalDateTime interviewDate;
	
	
	@ManyToOne
	User user;

	@ManyToOne
	Job job;
}