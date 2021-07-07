package com.buildingmap3d.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="field_table")
public class Field {
	@Id
	@Column(name="field_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int fieldID;
	
	@Column(name="field_name")
	private String fieldName;

	public Field() {
		super();
	}

	public Field(int fieldID, String fieldName) {
		super();
		this.fieldID = fieldID;
		this.fieldName = fieldName;
	}

	public int getFieldID() {
		return fieldID;
	}

	public void setFieldID(int fieldID) {
		this.fieldID = fieldID;
	}

	public String getFieldName() {
		return fieldName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	@Override
	public String toString() {
		return "Field [fieldID=" + fieldID + ", fieldName=" + fieldName + "]";
	}
	
	

}
