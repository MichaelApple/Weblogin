package com.webapp.model.entity;

import java.time.LocalDateTime;

/**
 * Created by Miha on 28.07.2017.
 */
public class User {

    private String firstName;
    private String lastName;
    private String middleName;
    private String initials;
    private String nickName;
    private String comment;
    private Group group;
    private String homePhone;
    private String cellPhonel;
    private String cellPhone2;
    private String email;
    private String skype;
    private Adress adress;

    private LocalDateTime dateOfCreation;
    private LocalDateTime lastChangesDate;

    public User(String firstName) {
        this.firstName = firstName;
    }

    public User(String firstName, String lastName, String middleName, String nickName, String comment, Group group, String homePhone, String cellPhonel, String cellPhone2, String email, String skype, Adress adress) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.middleName = middleName;
        this.initials = lastName + firstName.charAt(0) + ".";
        this.nickName = nickName;
        this.comment = comment;
        this.group = group;
        this.homePhone = homePhone;
        this.cellPhonel = cellPhonel;
        this.cellPhone2 = cellPhone2;
        this.email = email;
        this.skype = skype;
        this.adress = adress;
        this.dateOfCreation = LocalDateTime.now();
        this.lastChangesDate = LocalDateTime.now();
    }

    @Override
    public String toString() {
        return "User{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", middleName='" + middleName + '\'' +
                ", initials='" + initials + '\'' +
                ", nickName='" + nickName + '\'' +
                ", comment='" + comment + '\'' +
                ", group=" + group +
                ", homePhone='" + homePhone + '\'' +
                ", cellPhonel='" + cellPhonel + '\'' +
                ", cellPhone2='" + cellPhone2 + '\'' +
                ", email='" + email + '\'' +
                ", skype='" + skype + '\'' +
                ", adress=" + adress +
                ", dateOfCreation=" + dateOfCreation +
                ", lastChangesDate=" + lastChangesDate +
                '}';
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public String getInitials() {
        return initials;
    }

    public String getNickName() {
        return nickName;
    }

    public String getComment() {
        return comment;
    }

    public Group getGroup() {
        return group;
    }

    public String getHomePhone() {
        return homePhone;
    }

    public String getCellPhonel() {
        return cellPhonel;
    }

    public String getCellPhone2() {
        return cellPhone2;
    }

    public String getEmail() {
        return email;
    }

    public String getSkype() {
        return skype;
    }

    public Adress getAdress() {
        return adress;
    }

    public LocalDateTime getDateOfCreation() {
        return dateOfCreation;
    }

    public LocalDateTime getLastChangesDate() {
        return lastChangesDate;
    }
}
