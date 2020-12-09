package pl.mattwr89.fresh.app.validators;


import pl.mattwr89.fresh.app.domain.repositories.UserRepository;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class UniqueEmailValidator implements ConstraintValidator <UniqueEmail, String> {

    private final UserRepository userRepository;


    public UniqueEmailValidator(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void initialize(UniqueEmail constraint) {
    }

    public boolean isValid(String value, ConstraintValidatorContext context){
        return !userRepository.existsUserByEmail(value);
    }
}
