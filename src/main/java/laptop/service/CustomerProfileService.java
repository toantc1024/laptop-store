package laptop.service;

import jakarta.persistence.EntityManager;
import laptop.dao.CustomerProfileDAO;
import laptop.dao.UserDAO;
import laptop.dto.User;
import laptop.enums.Role;
import laptop.exception.user.UserAlreadyExistException;
import laptop.util.PasswordUtil;

public class CustomerProfileService {
    private final CustomerProfileDAO customerProfileDAO;
    private final UserService userService;

    public CustomerProfileService() {
        this.customerProfileDAO = new CustomerProfileDAO();
        this.userService = new UserService();
    }

    public void registerCustomer(User user) {
        // Đảm bảo User có role là CUSTOMER nhe và băm password
        user.setPassword(PasswordUtil.hashPassword(user.getPassword()));
        user.setRole(Role.CUSTOMER);
        userService.register(user);
    }

}
