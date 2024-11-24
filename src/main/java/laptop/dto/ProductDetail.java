package laptop.dto;

import jakarta.persistence.*;

import java.util.UUID;
import java.util.List;

@Entity
@Table(name = "product_detail")
public class ProductDetail {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    private String ram;
    private String gpu;
    private String cpu;
    private String vga;
    private String os;
    private String battery;
    private String ssd;
    private float weight;
    private float screenSize;
    private String color;

    // Mapping
    @OneToOne(mappedBy = "productDetail", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Product product;

    @OneToMany(mappedBy = "productDetail", cascade = CascadeType.ALL)
    private List<Image> imageList;

    public ProductDetail() {
    }

    public ProductDetail(List<Image> imageList, Product product, String color, float screenSize, float weight, String ssd, String battery, String os, String vga, String cpu, String gpu, String ram) {
        this.imageList = imageList;
        this.product = product;
        this.color = color;
            this.screenSize = screenSize;
        this.weight = weight;
        this.ssd = ssd;
        this.battery = battery;
        this.os = os;
        this.vga = vga;
        this.cpu = cpu;
        this.gpu = gpu;
        this.ram = ram;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getGpu() {
        return gpu;
    }

    public void setGpu(String gpu) {
        this.gpu = gpu;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getVga() {
        return vga;
    }

    public void setVga(String vga) {
        this.vga = vga;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getBattery() {
        return battery;
    }

    public void setBattery(String battery) {
        this.battery = battery;
    }

    public String getSsd() {
        return ssd;
    }

    public void setSsd(String ssd) {
        this.ssd = ssd;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

    public float getScreenSize() {
        return screenSize;
    }

    public void setScreenSize(float screenSize) {
        this.screenSize = screenSize;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public List<Image> getImageList() {
        return imageList;
    }

    public void setImageList(List<Image> imageList) {
        this.imageList = imageList;
    }
}
