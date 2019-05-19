package com.ServingWebContentSpringMVC.repos;

import com.ServingWebContentSpringMVC.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findUserByUsername(String username);
}
