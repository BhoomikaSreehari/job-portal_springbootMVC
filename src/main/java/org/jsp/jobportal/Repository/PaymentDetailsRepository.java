package org.jsp.jobportal.Repository;

import org.jsp.jobportal.Dto.PaymentDetails;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentDetailsRepository extends JpaRepository<PaymentDetails,Integer> {

	PaymentDetails save(PaymentDetails details);

}
