package pl.mattwr89.fresh.app.dtos;

import lombok.Data;
import lombok.ToString;
import pl.mattwr89.fresh.app.validators.UniqueEmail;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Data
@ToString (exclude = "password")
public class RegistrationDataDTO {

    private Long id;
    @NotBlank
    @Size(min = 3,max = 15)
    private String username;
    private String role;
    @NotBlank
    @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[^\\da-zA-Z]).{8,15}$")
    private String password;
    @NotBlank
    @UniqueEmail
    private String email;
    private Boolean active;

}
