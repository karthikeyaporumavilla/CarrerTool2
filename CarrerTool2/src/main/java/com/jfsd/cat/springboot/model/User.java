package com.jfsd.cat.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="user_table")
public class User
{
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   @Column(name="ur_id")
   private int id;
   @Column(name="ur_name",nullable=false,length = 50)
   private String name;
   @Column(name="ur_gender",nullable=false,length = 20)
   private String gender;
   @Column(name="ur_dob",nullable=false,length = 20)
   private String dateofbirth;
   @Column(name="ur_email",nullable=false,unique = true,length = 50)
   private String email;
   @Column(name="ur_password",nullable=false,length = 50)
   private String password;
   @Column(name="ur_contact",nullable=false,unique = true,length = 20)
   private String contact;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getDateofbirth() {
	return dateofbirth;
}
public void setDateofbirth(String dateofbirth) {
	this.dateofbirth = dateofbirth;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}

}
