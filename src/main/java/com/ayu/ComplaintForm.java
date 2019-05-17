package com.ayu;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ComplaintForm {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ComplaintId;
	private String StationName;
	private String Complaintype;
	private String DateOfIncident;
	private String TimeOfIncident;
	private String District;
	private String WriteComplain;
	private String PlaceOfOccurence;
	private String Name;
	private String mob;
	private String Email;
	private String hno;
	private String City;
	private Blob image;
	private String State;
	private String pincode;

	public int getComplaintId() {
		return ComplaintId;
	}

	public void setComplaintId(int complaintId) {
		ComplaintId = complaintId;
	}

	public String getStationName() {
		return StationName;
	}

	public void setStationName(String stationName) {
		StationName = stationName;
	}

	public String getComplaintype() {
		return Complaintype;
	}

	public void setComplaintype(String complaintype) {
		Complaintype = complaintype;
	}

	public String getDateOfIncident() {
		return DateOfIncident;
	}

	public void setDateOfIncident(String dateOfIncident) {
		DateOfIncident = dateOfIncident;
	}

	public String getTimeOfIncident() {
		return TimeOfIncident;
	}

	public void setTimeOfIncident(String timeOfIncident) {
		TimeOfIncident = timeOfIncident;
	}

	public String getDistrict() {
		return District;
	}

	public void setDistrict(String district) {
		District = district;
	}

	public String getWriteComplain() {
		return WriteComplain;
	}

	public void setWriteComplain(String writeComplain) {
		WriteComplain = writeComplain;
	}

	public String getPlaceOfOccurence() {
		return PlaceOfOccurence;
	}

	public void setPlaceOfOccurence(String placeOfOccurence) {
		PlaceOfOccurence = placeOfOccurence;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getMob() {
		return mob;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getHno() {
		return hno;
	}

	public void setHno(String hno) {
		this.hno = hno;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public ComplaintForm(String stationName, String complaintype,
			String dateOfIncident, String timeOfIncident, String district,
			String writeComplain, String placeOfOccurence, String name,
			String mob, String email, String hno, String city, Blob image,
			String state, String pincode) {
		super();

		StationName = stationName;
		Complaintype = complaintype;
		DateOfIncident = dateOfIncident;
		TimeOfIncident = timeOfIncident;
		District = district;
		WriteComplain = writeComplain;
		PlaceOfOccurence = placeOfOccurence;
		Name = name;
		this.mob = mob;
		Email = email;
		this.hno = hno;
		City = city;
		this.image = image;
		State = state;
		this.pincode = pincode;
	}


	public ComplaintForm() {
		super();
	}

	@Override
	public String toString() {
		return "ComplaintForm [ComplaintId=" + ComplaintId + ", StationName="
				+ StationName + ", Complaintype=" + Complaintype
				+ ", DateOfIncident=" + DateOfIncident + ", TimeOfIncident="
				+ TimeOfIncident + ", District=" + District
				+ ", WriteComplain=" + WriteComplain + ", PlaceOfOccurence="
				+ PlaceOfOccurence + ", Name=" + Name + ", mob=" + mob
				+ ", Email=" + Email + ", hno=" + hno + ", City=" + City
				+ ", image=" + image + ", State=" + State + ", pincode="
				+ pincode + "]";
	}

}