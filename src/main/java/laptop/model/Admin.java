package laptop.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import java.util.UUID;

@Entity
@Table(name="admin")
public class Admin extends User {
    public Admin() {

    }

    public Admin(UUID userId, String email, String firstName, String lastName, boolean isActive, String password) {
        super(userId, email, firstName, lastName, isActive, password);
    }
}
