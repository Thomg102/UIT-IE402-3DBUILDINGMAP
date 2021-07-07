package com.buildingmap3d.entities;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "face_node_table")
public class FaceNode {
	
	@EmbeddedId
	private FaceNodePK faceNodePK;

	public FaceNodePK getFaceNodePK() {
		return faceNodePK;
	}

	public void setFaceNodePK(FaceNodePK faceNodePK) {
		this.faceNodePK = faceNodePK;
	}

	public FaceNode() {
		super();
	}
	
}
