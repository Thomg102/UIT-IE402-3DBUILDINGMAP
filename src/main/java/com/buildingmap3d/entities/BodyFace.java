package com.buildingmap3d.entities;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "body_face_table")
public class BodyFace {

	@EmbeddedId
	private BodyFacePK bodyFacePK;

	public BodyFacePK getBodyFacePK() {
		return bodyFacePK;
	}

	public void setBodyFacePK(BodyFacePK bodyFacePK) {
		this.bodyFacePK = bodyFacePK;
	}

	public BodyFace() {
		super();
	}
	
	
}
