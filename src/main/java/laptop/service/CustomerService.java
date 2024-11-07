package laptop.service;

import laptop.dao.CustomerDAO;
import laptop.model.Customer;
//import laptop.util.ValidationUtil;
//import laptop.util.PasswordUtil;
import java.util.Optional;
import java.util.UUID;

public class CustomerService {

    private final CustomerDAO customerDAO;

    public CustomerService() {
        this.customerDAO = new CustomerDAO();
    }

    public Optional<Customer> registerCustomer(Customer customer) {
        try {
            // Perform validation on the customer
//            ValidationUtil.validateCustomer(customer);

            // Encrypt the password before saving
//            String hashedPassword = PasswordUtil.hashPassword(customer.getPassword());
//            customer.setPassword(hashedPassword);

            // Generate a unique ID if not set
//            if (customer.getUserId() == null) {
//                customer.setUserId(UUID.randomUUID());
//            }

            // Save the customer using the DAO and return the result
            return customerDAO.save(customer);
        } catch (RuntimeException e) {
            System.err.println("Registration failed: " + e.getMessage());
            return Optional.empty();
        }
    }
}
