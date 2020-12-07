package pl.mattwr89.fresh.app.dtos;

import lombok.Data;
import lombok.ToString;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;


@Data
@ToString (exclude = "password")
public class RegistrationDataDTO {

    private Long id;
    @NotBlank
    private String username;
    private String role;
    @NotBlank
    @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[^\\da-zA-Z]).{8,15}$")
    private String password;
    @NotBlank
    @Email
    private String email;
    private Boolean active;

}
