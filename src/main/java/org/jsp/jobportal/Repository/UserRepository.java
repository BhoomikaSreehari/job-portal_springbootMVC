package org.jsp.jobportal.Repository;


import org.jsp.jobportal.Dto.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {
	User findByEmail(String email);

	User findByMobile(long mobile);

}
