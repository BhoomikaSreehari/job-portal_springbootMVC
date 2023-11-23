package org.jsp.jobportal.Repository;

import org.jsp.jobportal.Dto.JobApplication;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JobApplicationRepository  extends JpaRepository<JobApplication, Integer> {

}
