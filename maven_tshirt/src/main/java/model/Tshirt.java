package model;

public class Tshirt {

    /**
     * 
     */
    private String id;
    private String name;
    private String color;
    private String gender;
    private String size;
    private float rating;
    private float price;
    private String availability;

    /**
     * 
     * Constructor
     * 
     * @param id
     * @param name
     * @param color
     * @param gender
     * @param size
     * @param rating
     * @param price
     * @param availability
     */
    public Tshirt(String id, String name, String color, String gender, String size, float rating, float price,
            String availability) {

        this.id = id;
        this.name = name;
        this.color = color;
        this.gender = gender;
        this.size = size;
        this.rating = rating;
        this.price = price;
        this.availability = availability;

    }

    /**
     * Getter & Setter Methods for the above variables.
     * ID, Name, Color, Size, Gender, Rating, Price, Availability.
     */

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

}
