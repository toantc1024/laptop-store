package laptop.dto;

import jakarta.persistence.*;
import laptop.enums.Role;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "customer_profiles")
public class CustomerProfile {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id", updatable = false)
    private UUID profileId;


    @Column(name = "phone_number", nullable = false)
    private String phoneNumber;

    @Column(name = "birth_date", nullable = true)
    private LocalDate birthDate;

    // Owner side
    @OneToOne(mappedBy = "customerProfile")
    private User user;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id", referencedColumnName = "id")
    private Address address;
    @OneToOne(mappedBy = "customerProfile")
    private Cart cart;
    @OneToMany(mappedBy = "customerProfile", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Order> listOrders;

    public CustomerProfile() {
    }

    public CustomerProfile(Address address, LocalDate birthDate, String phoneNumber, User user) {
        this.address = address;
        this.birthDate = birthDate;
        this.phoneNumber = phoneNumber;
        this.user = user;
    }

    public List<Order> getListOrders() {
        return listOrders;
    }

    public void setListOrders(List<Order> listOrders) {
        this.listOrders = listOrders;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public UUID getProfileId() {
        return profileId;
    }

    public void setProfileId(UUID profileId) {
        this.profileId = profileId;
    }
}
