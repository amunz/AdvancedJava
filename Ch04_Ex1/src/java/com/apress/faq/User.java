package com.apress.faq;

public class User {
    private String firstName;
    private String lastName;
    private int age;
    private String gender;

    public String getFirstName() { return firstName; }
    public void setFirstName(String newFirstName) {
    this.firstName = newFirstName;
    }

    public String getLastName() { return lastName; }
    public void setLastName(String newLastName) {
    this.lastName = newLastName;
    }
    public int getAge() { return age; }
    public void setAge(int newAge) {
    this.age = newAge;
    }
    public String getGender(){ return gender;}
    public void setGender(String newGender){
        this.gender = newGender;
    }

}
