package pl.mattwr89.fresh.app.validators;


import pl.mattwr89.fresh.app.domain.repositories.UserRepository;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class EmailValidator implements ConstraintValidator <Email, String> {

    private final UserRepository userRepository;


    public EmailValidator(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void initialize(Email constraint) {
    }

    public boolean isValid(String value, ConstraintValidatorContext context){
        return !userRepository.existsUserByEmail(value);
    }
}
