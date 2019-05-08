package com.ayu;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Wanted {
	@Id
	private String wid;
	private String name;
	private String fname;
	private String height;
	private String weight;
	private String reward;
	private String image;
	public Wanted(String wid, String name, String fname, String height,
			String weight, String reward, String image) {
		super();
		this.wid = wid;
		this.name = name;
		this.fname = fname;
		this.height = height;
		this.weight = weight;
		this.reward = reward;
		this.image = image;
	}
	public Wanted() {
		super();
	}
	public Wanted(String wid) {
		super();
		this.wid = wid;
	}
	public String getWid() {
		return wid;
	}
	public void setWid(String wid) {
		this.wid = wid;
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
	@Override
	public String toString() {
		return "Wanted [wid=" + wid + ", name=" + name + ", fname=" + fname
				+ ", height=" + height + ", weight=" + weight + ", reward="
				+ reward + ", image=" + image + "]";
	}
	
}
