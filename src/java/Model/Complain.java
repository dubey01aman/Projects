package Model;

 public class Complain{
    private String Fname,Lname,mail,complain,time,Qrelated,mobile;

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getMobile() {
        return mobile;
    }

    public String getFname() {
        return Fname;
    }

    public String getLname() {
        return Lname;
    }

    public String getMail() {
        return mail;
    }

    public String getComplain() {
        return complain;
    }

    public String getTime() {
        return time;
    }

    public String getQrelated() {
        return Qrelated;
    }

    public void setFname(String Fname) {
        this.Fname = Fname;
    }

    public void setLname(String Lname) {
        this.Lname = Lname;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setComplain(String complain) {
        this.complain = complain;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setQrelated(String Qrelated) {
        this.Qrelated = Qrelated;
    }
    
}
