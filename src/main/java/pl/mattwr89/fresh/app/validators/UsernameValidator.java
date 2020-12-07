package pl.mattwr89.fresh.app.validators;

import pl.mattwr89.fresh.app.domain.repositories.UserRepository;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class UsernameValidator implements ConstraintValidator<Username, String> {
    private final UserRepository userRepository;

    public UsernameValidator(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void initalize(Username constraint){

    }

    public boolean isValid(String value, ConstraintValidatorContext context){
        return !userRepository.existsUserByUsername(value);
    }


}
