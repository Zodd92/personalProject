package com.betaplan.kristian.kolarealestate.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "realEstate")
public class RealEstate {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;

    @NotNull(message = "number of room is required!")
    @Min(1)
    private int room;

    @NotNull(message = "number of toilet is required!")
    @Min(1)
    private int toilet;

    @NotNull(message = "number of floor/floors is required!")
    @Min(1)
    private int floor;

    @NotNull(message = "price is required!")
    @Min(10)
    private double price;

    @NotNull
    private String image;

    @NotNull(message = "location is required!")
    @Size(min=6)
    private String location;

    @NotBlank
    private boolean type;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;

    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }

    public RealEstate() {}

    public RealEstate(Long id, int room, int toilet, int floor, double price, String image, String location, boolean type) {
        Id = id;
        this.room = room;
        this.toilet = toilet;
        this.floor = floor;
        this.price = price;
        this.image = image;
        this.location = location;
        this.type=type;
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    public int getToilet() {
        return toilet;
    }

    public void setToilet(int toilet) {
        this.toilet = toilet;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public boolean isType() {
        return type;
    }

    public void setType(boolean type) {
        this.type = type;
    }
}
