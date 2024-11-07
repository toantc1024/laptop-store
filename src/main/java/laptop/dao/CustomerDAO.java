package laptop.dao;

import laptop.dao.interfaces.ICustomerDAO;
import laptop.model.Customer;
import laptop.util.TransactionUtil;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

public class CustomerDAO implements ICustomerDAO {

    @Override
    public Optional<Customer> save(Customer customer) {
        try {
            return TransactionUtil.execute(
                    em -> {
                        em.persist(customer); // Thêm đối tượng Customer vào cơ sở dữ liệu
                        return Optional.ofNullable(customer); // Wrap the customer in Optional
                    },
                    true, // Cần transaction cho thao tác ghi (write)
                    "Lỗi khi lưu customer"
            );
        } catch (RuntimeException e) {
            return Optional.empty(); // Return Optional.empty() if an error occurs
        }
    }


    @Override
    public void update(Customer customer) {

    }

    @Override
    public void delete(UUID customerId) {

    }

    @Override
    public Customer findById(UUID customerId) {
        return null;
    }

    @Override
    public Customer findByEmail(String email) {
        return null;
    }

    @Override
    public List<Customer> findAll() {
        return List.of();
    }
}
