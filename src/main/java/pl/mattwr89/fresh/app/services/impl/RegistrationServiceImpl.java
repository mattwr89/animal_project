package pl.mattwr89.fresh.app.services.impl;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import pl.mattwr89.fresh.app.domain.entities.User;
import pl.mattwr89.fresh.app.domain.repositories.UserRepository;
import pl.mattwr89.fresh.app.dtos.RegistrationDataDTO;
import pl.mattwr89.fresh.app.services.RegistrationService;

import javax.transaction.Transactional;

@Service
@Transactional
public class RegistrationServiceImpl implements RegistrationService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public RegistrationServiceImpl(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public void registerUser(RegistrationDataDTO registerData) {
        User user = new User();
        user.setUsername(registerData.getUsername());
        user.setRole("user");
        user.setPassword(passwordEncoder.encode(registerData.getPassword()));
        user.setEmail(registerData.getEmail());
        user.setActive(true);

        userRepository.save(user);

    }
}
