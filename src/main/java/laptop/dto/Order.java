package laptop.dto;

import jakarta.persistence.*;
import laptop.enums.OrderStatus;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "order")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id")
    private UUID orderId;

    @Column(nullable = false)
    @Temporal(TemporalType.DATE)
    private Date orderDate;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<OrderItem> listOrderItem;

    @ManyToOne
    @JoinColumn(name = "customer_profile_id", referencedColumnName = "id")
    private CustomerProfile customerProfile;

    @Column(nullable = false)
    private OrderStatus status;

    public Order() {
    }

    public Order(Date orderDate, List<OrderItem> listOrderItem, CustomerProfile customerProfile, OrderStatus status) {
        this.orderDate = orderDate;
        this.listOrderItem = listOrderItem;
        this.customerProfile = customerProfile;
        this.status = status;
    }


    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public List<OrderItem> getListOrderItem() {
        return listOrderItem;
    }

    public void setListOrderItem(List<OrderItem> listOrderItem) {
        this.listOrderItem = listOrderItem;
    }

    public CustomerProfile getCustomerProfile() {
        return customerProfile;
    }

    public void setCustomerProfile(CustomerProfile customerProfile) {
        this.customerProfile = customerProfile;
    }

    public OrderStatus getStatus() {
        return status;
    }

    public void setStatus(OrderStatus status) {
        this.status = status;
    }
}
