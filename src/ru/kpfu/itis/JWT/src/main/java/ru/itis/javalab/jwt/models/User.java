package ru.itis.javalab.jwt.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "users")
public class User implements Serializable {

    private static final long serialVersionId = -3972486015623984303L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long user_id;
    private String firstname;
    private String lastname;
    private Integer age;
    private String email;
    private String password;
    private String phone;
    private String city;
    private String confirm_code;

    @Enumerated(value = EnumType.STRING)
    private State state;
    public enum State {
        ACTIVE, BANNED
    }

    @Enumerated(value = EnumType.STRING)
    private Role role;
    public enum Role {
        USER, ADMIN
    }

    @Enumerated(value = EnumType.STRING)
    private Status status;
    public enum Status {
        CONFIRMED, UNCONFIRMED
    }

    @OneToMany(mappedBy = "owner")
    private List<Orders> ordersList;

    public Boolean isActive() {
        return this.state == State.ACTIVE;
    }

    public Boolean isBanned() {
        return this.state == State.BANNED;
    }

    public Boolean isAdmin() {
        return this.role == Role.ADMIN;
    }

    public Boolean isUser() {
        return this.role == Role.USER;
    }

    public Boolean isConfirmed() {
        return this.status == Status.CONFIRMED;
    }

    public Boolean isUnconfirmed() {
        return this.status == Status.UNCONFIRMED;
    }

}
