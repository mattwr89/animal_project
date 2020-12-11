package pl.mattwr89.fresh.app.dtos;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Pattern;
import java.time.LocalDate;
import java.time.LocalTime;

@Data
public class CreateAnimalRequest {

    private String name;
    private String street;
    private String city;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate pickUpDate;
    private LocalTime pickUpTime;
    private String pickUpComment;
    @Pattern(regexp = "^^\\+(?:[0-9]●?){6,14}[0-9]$")
    private String phoneNumber;


}
