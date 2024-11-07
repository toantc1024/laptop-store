package laptop.service;

import laptop.model.User;
import laptop.dao.UserDAO;
import laptop.util.MessageConstants;

import java.util.Optional;
import java.util.UUID;

public class UserService {
    private final UserDAO userDAO;

    public UserService() {
        this.userDAO = new UserDAO(); // Initialize UserDAO
    }

    // Method to register a new user
    public User registerUser(User user) {
        // Check if user with the same email already exists
        Optional<User> existingUser = userDAO.findByEmail(user.getEmail());
        if (existingUser.isPresent()) {
            throw new RuntimeException(MessageConstants.ERROR_USER_EXISTS); // Use message constant
        }
        // Save new user
        return userDAO.save(user);
    }

    // Other user-related methods (e.g., update, delete) can be added here as needed
}
