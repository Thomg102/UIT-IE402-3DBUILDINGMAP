package com.buildingmap3d.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="body_table")
public class Body {

	@Id
	@Column(name="body_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bodyID;
	
	@Column(name="body_name")
	private String bodyName;
	
	@Column(name="body_color")
	private String bodyColor;
	
	@Column(name="body_desc")
	private String bodyDesc;
	
	@Column(name="body_height")
	private float bodyHeight;
	
	@Column(name="body_storey")
	private int bodyStorey;
	
	@Column(name="body_address")
	private String bodyAddress;
	
	@OneToOne
	@JoinColumn(name = "field_id")
	private Field field;

	public Body() {
		super();
	}

	public Body(int bodyID, String bodyName, String bodyColor, String bodyDesc, float bodyHeight, int bodyStorey,
			String bodyAddress, Field field) {
		super();
		this.bodyID = bodyID;
		this.bodyName = bodyName;
		this.bodyColor = bodyColor;
		this.bodyDesc = bodyDesc;
		this.bodyHeight = bodyHeight;
		this.bodyStorey = bodyStorey;
		this.bodyAddress = bodyAddress;
		this.field = field;
	}

	public int getBodyID() {
		return bodyID;
	}

	public void setBodyID(int bodyID) {
		this.bodyID = bodyID;
	}

	public String getBodyName() {
		return bodyName;
	}

	public void setBodyName(String bodyName) {
		this.bodyName = bodyName;
	}

	public String getBodyColor() {
		return bodyColor;
	}

	public void setBodyColor(String bodyColor) {
		this.bodyColor = bodyColor;
	}

	public String getBodyDesc() {
		return bodyDesc;
	}

	public void setBodyDesc(String bodyDesc) {
		this.bodyDesc = bodyDesc;
	}

	public float getBodyHeight() {
		return bodyHeight;
	}

	public void setBodyHeight(float bodyHeight) {
		this.bodyHeight = bodyHeight;
	}

	public int getBodyStorey() {
		return bodyStorey;
	}

	public void setBodyStorey(int bodyStorey) {
		this.bodyStorey = bodyStorey;
	}

	public String getBodyAddress() {
		return bodyAddress;
	}

	public void setBodyAddress(String bodyAddress) {
		this.bodyAddress = bodyAddress;
	}

	public Field getField() {
		return field;
	}

	public void setField(Field field) {
		this.field = field;
	}

	@Override
	public String toString() {
		return "Body [bodyID=" + bodyID + ", bodyName=" + bodyName + ", bodyColor=" + bodyColor + ", bodyDesc="
				+ bodyDesc + ", bodyHeight=" + bodyHeight + ", bodyStorey=" + bodyStorey + ", bodyAddress="
				+ bodyAddress + ", field=" + field + "]";
	}
	
	
}
