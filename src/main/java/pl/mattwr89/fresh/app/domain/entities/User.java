package pl.mattwr89.fresh.app.domain.entities;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.Email;
import java.util.List;

@Entity
@Table(name = "users")
@Getter
@Setter

@ToString (exclude = {"password", "notifications"})
public class User {

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Long id;

    @Column (nullable = false, unique = true)
    private String username;
    private String role;
    @Email
    @Column (nullable = false, unique = true)
    private String email;
    @Column (nullable = false, unique = true)
    private String password;
    @Column (nullable = false)
    private Boolean active = false;

    @OneToMany (mappedBy = "user")
    private List<Notification> notifications;

}
