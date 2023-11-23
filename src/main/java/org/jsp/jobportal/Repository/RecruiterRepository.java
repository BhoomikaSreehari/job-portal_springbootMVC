package org.jsp.jobportal.Repository;



import org.jsp.jobportal.Dto.Recruiter;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RecruiterRepository extends JpaRepository<Recruiter, Integer>
{

	Recruiter findByEmail(String email);

	Recruiter findByMobile(long mobile);
}
