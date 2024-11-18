package laptop.dao;

import laptop.dto.CustomerProfile;

public class CustomerProfileDAO extends BaseDAO<CustomerProfile> {
    public CustomerProfileDAO() {
        super(CustomerProfile.class);
    }
}
