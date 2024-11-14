package laptop.dto;

import jakarta.persistence.*;

import java.util.UUID;

@Entity
public class Image {

    @Id
    @Column(name = "id", nullable = false, unique = true)
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID imageId;

    private String description;
    private String imageUrl;

    @OneToOne(mappedBy = "brandImage")
    private Brand brand;

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private ProductDetail productDetail;

    public Image() {
    }

    public Image(String description, String imageUrl, Brand brand, ProductDetail productDetail) {
        this.description = description;
        this.imageUrl = imageUrl;
        this.brand = brand;
        this.productDetail = productDetail;
    }

    public UUID getImageId() {
        return imageId;
    }

    public void setImageId(UUID imageId) {
        this.imageId = imageId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public ProductDetail getProductDetail() {
        return productDetail;
    }

    public void setProductDetail(ProductDetail productDetail) {
        this.productDetail = productDetail;
    }
}
