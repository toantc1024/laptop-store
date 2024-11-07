package laptop.dao.interfaces;

import laptop.model.Customer;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface ICustomerDAO {
    Optional<Customer>  save(Customer customer);
    void update(Customer customer);
    void delete(UUID customerId);
    Customer findById(UUID customerId);
    Customer findByEmail(String email);
    List<Customer> findAll();
}
