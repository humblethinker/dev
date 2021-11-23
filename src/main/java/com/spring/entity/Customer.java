package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="customer")
public class Customer {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@NotNull(message="is required")
	@Size(min=2, message="is required")
	@Pattern(regexp="[a-zA-Z]*", message="invalid")
	@Column(name="first_name")
	private String firstName;
	
	@NotNull(message="is required")
	@Size(min=2, message="is required")
	@Pattern(regexp="[a-zA-Z]*", message="invalid")
	@Column(name="last_name")
	private String lastName;
	
	@NotNull(message="is required")
	@Pattern(regexp="[a-zA-Z0-9]*@[a-zA-Z0-9]*.com", message="invalid")
	@Column(name="email")
	private String email;
	
	@NotNull(message="is required")
	@Pattern(regexp="[0-9]{3}-[0-9]{3}-[0-9]{4}", message="invalid")
	@Column(name="phone_number")
	private String phoneNumber;
	
	public Customer() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + "]";
	}
		
}





