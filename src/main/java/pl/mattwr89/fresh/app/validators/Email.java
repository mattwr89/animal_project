package pl.mattwr89.fresh.app.validators;

import javax.validation.Payload;

public @interface Email {

    String message() default "{EmailValidator.error.message}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
