package com.ayu;

import javax.persistence.Entity;
import javax.persistence.Id;

	@Entity
	public class MissingPerson {
	    @Id
		private String id;
		private String name;
		private String fname;
		private String height;
		private String weight;
		private String reward;
		private String image;
		
		
		public String getId() {
			return id;
		}


		public void setId(String id) {
			this.id = id;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}


		public String getFname() {
			return fname;
		}


		public void setFname(String fname) {
			this.fname = fname;
		}


		public String getHeight() {
			return height;
		}


		public void setHeight(String height) {
			this.height = height;
		}


		public String getWeight() {
			return weight;
		}


		public void setWeight(String weight) {
			this.weight = weight;
		}


		public String getReward() {
			return reward;
		}


		public void setReward(String reward) {
			this.reward = reward;
		}


		public String getImage() {
			return image;
		}


		public void setImage(String image) {
			this.image = image;
		}
		public MissingPerson(String id, String name, String fname,
				String height, String weight, String reward, String image) {
			super();
			this.id = id;
			this.name = name;
			this.fname = fname;
			this.height = height;
			this.weight = weight;
			this.reward = reward;
			this.image = image;
		}

		public MissingPerson(String id) {
			super();
			this.id = id;
		}


		public MissingPerson() {
			super();
		}
		@Override
		public String toString() {
			return "MissingPerson [id=" + id + ", name=" + name + ", fname="
					+ fname + ", height=" + height + ", weight=" + weight
					+ ", reward=" + reward + ", image=" + image + "]";
		}
        
		
	}

