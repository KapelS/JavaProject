package com.estateagency.validation;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint(validatedBy = NameValidator.class)
@Target( { ElementType.METHOD, ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface Name {
    String message() default "Use only letters";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
