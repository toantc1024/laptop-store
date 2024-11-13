package laptop.service;

import jakarta.persistence.EntityManager;
import laptop.dao.UserDAO;
import laptop.dto.User;
import laptop.enums.Role;
import laptop.exception.user.UserAlreadyExistException;
import laptop.util.PasswordUtil;

public class UserService {
    private static final String ADMIN_EMAIL = "admin@example.com";
    private static final String DEFAULT_ADMIN_PASSWORD = "adminPassword";

    private final UserDAO userDAO;

    public UserService() {
        this.userDAO = new UserDAO();
    }

    public void register(User user) {
        try {
            User existingAdmin = userDAO.findByEmail(user.getEmail());
            if (existingAdmin == null) {
                userDAO.create(user);
            } else {
                throw new UserAlreadyExistException(String.format("User with email %s already exists", user.getEmail()));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
