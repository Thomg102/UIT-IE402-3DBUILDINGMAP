package com.buildingmap3d.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="face_table")
public class Face {
	@Id
	@Column(name="face_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int faceID;

	@Column(name="face_type")
	private String faceType;
	
	@Column(name="face_symbol_or_renderrer")
	private String faceSymbolRenderer;
	
	@Column(name="face_data")
	private int faceData;
	
	@Column(name="face_in_file")
	private String faceInFile;
	
	public Face() {
		super();
	}

	public Face(int faceID, String faceType, String faceSymbolRenderer, int faceData, String faceInFile) {
		super();
		this.faceID = faceID;
		this.faceType = faceType;
		this.faceSymbolRenderer = faceSymbolRenderer;
		this.faceData = faceData;
		this.faceInFile = faceInFile;
	}

	public int getFaceID() {
		return faceID;
	}

	public void setFaceID(int faceID) {
		this.faceID = faceID;
	}

	public String getFaceType() {
		return faceType;
	}

	public void setFaceType(String faceType) {
		this.faceType = faceType;
	}

	public String getFaceSymbolRenderer() {
		return faceSymbolRenderer;
	}

	public void setFaceSymbolRenderer(String faceSymbolRenderer) {
		this.faceSymbolRenderer = faceSymbolRenderer;
	}

	public int getFaceData() {
		return faceData;
	}

	public void setFaceData(int faceData) {
		this.faceData = faceData;
	}

	public String getFaceInFile() {
		return faceInFile;
	}

	public void setFaceInFile(String faceInFile) {
		this.faceInFile = faceInFile;
	}

	@Override
	public String toString() {
		return "Face [faceID=" + faceID + ", faceType=" + faceType + ", faceSymbolRenderer=" + faceSymbolRenderer
				+ ", faceData=" + faceData + ", faceInFile=" + faceInFile + "]";
	}
	
}
