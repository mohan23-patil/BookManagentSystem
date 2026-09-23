package entity;

import java.io.Serializable;

public class Admin implements Serializable
{
    private String adminName;
    private String password;
    private String firstName;
    private String lastName;
    private String mailId;
    private long mobNo;

    public Admin()
    {
        super();
    }

    public Admin(String adminName, String password, String firstName, String lastName, String mailId, long mobNo) {
        this.adminName = adminName;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.mailId = mailId;
        this.mobNo = mobNo;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMailId() {
        return mailId;
    }

    public void setMailId(String mailId) {
        this.mailId = mailId;
    }

    public long getMobNo() {
        return mobNo;
    }

    public void setMobNo(long mobNo) {
        this.mobNo = mobNo;
    }
}
