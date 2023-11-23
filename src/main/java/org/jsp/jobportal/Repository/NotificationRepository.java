package org.jsp.jobportal.Repository;

import org.jsp.jobportal.Dto.Notification;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NotificationRepository extends JpaRepository<Notification, Integer> {

}
