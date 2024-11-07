package laptop.model;

import jakarta.persistence.*;
import laptop.model.enums.CustomerType;
import  java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "customer")
public class Customer extends User{
    public Customer (){

    }

    public Customer(UUID userId, String email, String firstName, String lastName, boolean isActive, String password, String phoneNumber, CustomerType customerType, LocalDate birthDate, List<Address> addresses) {
        super(userId, email, firstName, lastName, isActive, password);
        this.phoneNumber = phoneNumber;
        this.customerType = customerType;
        this.birthDate = birthDate;
        this.addresses = addresses;
    }

    @Column(name="phone_number", nullable = false)
    private String phoneNumber;

    @Enumerated(EnumType.STRING)
    @Column(name="customer_type", nullable = false)
    private CustomerType customerType;

    @Column(name="birth_date")
    private LocalDate birthDate;

    @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Address> addresses;


    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public CustomerType getCustomerType() {
        return customerType;
    }

    public void setCustomerType(CustomerType customerType) {
        this.customerType = customerType;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }
}
