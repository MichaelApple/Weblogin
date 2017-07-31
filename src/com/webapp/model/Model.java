package com.webapp.model;

import com.webapp.model.entity.Adress;
import com.webapp.model.entity.Group;
import com.webapp.model.entity.User;

/**
 * Created by Miha on 28.07.2017.
 */
public class Model {

    private User user;
    private Adress adress;

    public void addUser(String firstName, String lastName, String middleName, String nickName, String comment, String group, String homePhone, String cellPhonel, String cellPhone2, String email, String skype, String zip, String city, String street, String buildingNumber, String flat) {

        adress = new Adress(zip, city, street, buildingNumber, flat);
        user = new User(firstName, lastName, middleName, nickName, comment, Group.valueOf(group.toUpperCase()), homePhone, cellPhonel, cellPhone2, email, skype, adress);

        user = new User(firstName);
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Adress getAdress() {
        return adress;
    }

    public void setAdress(Adress adress) {
        this.adress = adress;
    }
}
