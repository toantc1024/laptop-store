package laptop.dto;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Entity
public class Product {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID productId;

    private String name;
    private long price;
    private String description;
        private float promotionPercent;

    // Mapping
    @OneToMany(mappedBy = "product")
    private List<OrderItem> orderItems = new ArrayList<>();

    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<CartItem> cartItems = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "brand_id", referencedColumnName = "id", nullable = false)
    private Brand brand;

    @ManyToOne
    @JoinColumn(name = "category_id", referencedColumnName = "id", nullable = false)
    private Category category;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_detail_id", referencedColumnName = "id")
    private ProductDetail productDetail;

    public Product() {
    }

    public Product(ProductDetail productDetail, Category category, Brand brand, List<CartItem> cartItems, List<OrderItem> orderItems, float promotionPercent, String description, long price, String name) {
        this.productDetail = productDetail;
        this.category = category;
        this.brand = brand;
        this.cartItems = cartItems;
        this.orderItems = orderItems;
        this.promotionPercent = promotionPercent;
        this.description = description;
        this.price = price;
        this.name = name;
    }

    public UUID getProductId() {
        return productId;
    }

    public void setProductId(UUID productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPromotionPercent() {
        return promotionPercent;
    }

    public void setPromotionPercent(float promotionPercent) {
        this.promotionPercent = promotionPercent;
    }

    public List<OrderItem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<OrderItem> orderItems) {
        this.orderItems = orderItems;
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public ProductDetail getProductDetail() {
        return productDetail;
    }

    public void setProductDetail(ProductDetail productDetail) {
        this.productDetail = productDetail;
    }
}
