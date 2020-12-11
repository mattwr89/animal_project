package pl.mattwr89.fresh.app.domain.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.mattwr89.fresh.app.domain.entities.Notification;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long> {
}
