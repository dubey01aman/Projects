package Model;

import javax.servlet.http.Part;


public class DesigningCode {
    
    private String Tshirtsize,quantity,name,email,mobile,pincode,state,city,address,landmark;
    private Part fileimg;
    

    public void setTshirtsize(String Tshirtsize) {
        this.Tshirtsize = Tshirtsize;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTshirtsize() {
        return Tshirtsize;
    }

    public String getQuantity() {
        return quantity;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getMobile() {
        return mobile;
    }

    public String getPincode() {
        return pincode;
    }

    public String getState() {
        return state;
    }

    public String getCity() {
        return city;
    }

    public String getAddress() {
        return address;
    }

    public String getLandmark() {
        return landmark;
    }

    public Part getFileimg() {
        return fileimg;
    }

    public void setLandmark(String landmark) {
        this.landmark = landmark;
    }

    public void setFileimg(Part fileimg) {
        this.fileimg = fileimg;
    }
}