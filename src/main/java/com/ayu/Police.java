package com.ayu;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Police {

    	 @Id
	    private String email;
		private String pname;
		private String password;
		private String gender;
		private String dob;
		private String mobile;
		private String address;
	
		public String getPname() {
			return pname;
		}
		public void setPname(String pname) {
			this.pname = pname;
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
		
		public String getMobile() {
			return mobile;
		}
		public void setMobile(String mobile) {
			this.mobile = mobile;
		}
		
		public Police() {
			super();
		}
		@Override
		public String toString() {
			return "Police [email=" + email + ", pname=" + pname
					+ ", password=" + password + ", gender=" + gender
					+ ", dob=" + dob + ", mobile=" + mobile + ", address="
					+ address + "]";
		}
		public Police(String email, String pname, String password,
				String gender, String dob, String mobile, String address) {
			super();
			this.email = email;
			this.pname = pname;
			this.password = password;
			this.gender = gender;
			this.dob = dob;
			this.mobile = mobile;
			this.address = address;
		}
		public Police(String email) {
			super();
			this.email = email;
		}
		
	}
