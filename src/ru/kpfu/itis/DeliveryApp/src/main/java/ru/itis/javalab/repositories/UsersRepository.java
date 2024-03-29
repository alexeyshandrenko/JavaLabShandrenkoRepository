package ru.itis.javalab.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.itis.javalab.dto.UserForm;
import ru.itis.javalab.models.User;

import javax.swing.text.html.Option;
import java.util.Optional;

public interface UsersRepository extends JpaRepository<User, Long> {

    Optional<User> findByEmail(String email);

}
