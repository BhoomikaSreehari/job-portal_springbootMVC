package org.jsp.jobportal.Repository;

import java.util.List;

import org.jsp.jobportal.Dto.Job;
import org.springframework.data.jpa.repository.JpaRepository;

public interface JobRepository extends JpaRepository<Job,Integer> {

	List<Job> findByApprovedTrue();

}
