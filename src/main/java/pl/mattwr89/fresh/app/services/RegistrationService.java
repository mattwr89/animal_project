package pl.mattwr89.fresh.app.services;

import pl.mattwr89.fresh.app.dtos.RegistrationDataDTO;

public interface RegistrationService {
    void registerUser(RegistrationDataDTO registerData);
}
