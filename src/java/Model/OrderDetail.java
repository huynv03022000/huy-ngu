package Model;

public class OrderDetail {

    private int oid;
    private String pid;
    private int quantity;
    private int price;
    private String size;
    private String color;

    public OrderDetail(int oid, String pid, int quantity, int price, String size, String color) {
        this.oid = oid;
        this.pid = pid;
        this.quantity = quantity;
        this.price = price;
        this.size = size;
        this.color = color;
    }
    
    

    public OrderDetail() {
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

   
}
