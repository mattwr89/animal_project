package pl.mattwr89.fresh.app.domain.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.mattwr89.fresh.app.domain.entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    boolean existsUserByUsername(String username);
    boolean existsUserByEmail(String email);
}
