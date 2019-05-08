package com.ayu;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class PoliceStation {
@Id	
	private String stationName;
	private String district;
	private String state;
	private String inchargeName;
	private String inchargeId;
	private String mail;
	private String regiDate;
	
	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getInchargeName() {
		return inchargeName;
	}

	public void setInchargeName(String inchargeName) {
		this.inchargeName = inchargeName;
	}

	public String getInchargeId() {
		return inchargeId;
	}

	public void setInchargeId(String inchargeId) {
		this.inchargeId = inchargeId;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getRegiDate() {
		return regiDate;
	}

	public void setRegiDate(String regiDate) {
		this.regiDate = regiDate;
	}

	public PoliceStation() {
		super();
	}

	public PoliceStation(String stationName) {
		super();
		this.stationName = stationName;
	}

	public PoliceStation(String stationName, String district, String state,
			String inchargeName, String inchargeId, String mail, String regiDate) {
		super();
		this.stationName = stationName;
		this.district = district;
		this.state = state;
		this.inchargeName = inchargeName;
		this.inchargeId = inchargeId;
		this.mail = mail;
		this.regiDate = regiDate;
	}

	@Override
	public String toString() {
		return "PoliceStation [stationName=" + stationName + ", district="
				+ district + ", state=" + state + ", inchargeName="
				+ inchargeName + ", inchargeId=" + inchargeId + ", mail="
				+ mail + ", regiDate=" + regiDate + "]";
	}

}
