package com.ayu;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
	@Id
	private String email;
	private String name;
	private String password;
	private String gender;
	private String dob;
	private int mobile;
	private String address;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
	}

	public User(String email, String name, String password, String gender,
			String dob, int mobile, String address) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
		this.gender = gender;
		this.dob = dob;
		this.mobile = mobile;
		this.address = address;
	}

	@Override
	public String toString() {
		return "User [email=" + email + ", name=" + name + ", password="
				+ password + ", gender=" + gender + ", dob=" + dob
				+ ", mobile=" + mobile + ", address=" + address + "]";
	}

	public User(String email) {
		super();
		this.email = email;
	}

	public User() {
		super();
	}

}
