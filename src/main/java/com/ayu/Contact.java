package com.ayu;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Contact {
	@Id
	private String email;
	private String name;
	private String message;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Contact(String email, String name, String message) {
		super();
		this.email = email;
		this.name = name;
		this.message = message;
	}
	public Contact() {
		super();
	}
	public Contact(String email) {
		super();
		this.email = email;
	}
	@Override
	public String toString() {
		return "Contact [email=" + email + ", name=" + name + ", message="
				+ message + "]";
	}
}
