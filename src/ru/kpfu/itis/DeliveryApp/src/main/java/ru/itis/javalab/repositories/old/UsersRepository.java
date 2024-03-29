package ru.itis.javalab.repositories.old;

import ru.itis.javalab.models.User;

import java.util.List;
import java.util.Optional;

public interface UsersRepository extends CrudRepository<User, Long> {
    List<User> findFirstByEmailAndPassword(String email, String pass);
    Optional<User> findUserByEmail(String email);
    Optional<User> findUserByPassword(String password);
}
