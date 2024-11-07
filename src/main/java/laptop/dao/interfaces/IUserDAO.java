package laptop.dao.interfaces;

import laptop.model.User;

import java.util.Optional;
import java.util.UUID;

public interface IUserDAO {
    User save(User user);                    // Save a new user
    Optional<User> findByEmail(String email); // Find a user by email
    Optional<User> findById(UUID userId);     // Find a user by ID
    boolean deleteById(UUID userId);          // Delete a user by ID
    User update(User user);                  // Update user information
}
