package laptop.service;

import jakarta.persistence.EntityManager;
import laptop.dao.UserDAO;
import laptop.dto.User;
import laptop.enums.Role;
import laptop.util.PasswordUtil;

public class AdminService {
    private static final String ADMIN_EMAIL = "22110248@student.hcmute.edu.vn";
    private static final String DEFAULT_ADMIN_PASSWORD = "Admin123";

    private final UserService userService;


    public AdminService() {
        this.userService = new UserService();
    }

    public void initializeAdminAccount() {
        try {
            String hashedPassword = PasswordUtil.hashPassword(DEFAULT_ADMIN_PASSWORD);
            // Create a new admin user
            User adminUser = new User(
                    "Admin", // firstName
                    "User",  // lastName
                    ADMIN_EMAIL, // email
                    "000-000-0000", // phone
                    hashedPassword, // hashed password
                    true, // isActive
                    Role.ADMIN // role
            );

            // Persist the admin user
            userService.register(adminUser);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}
