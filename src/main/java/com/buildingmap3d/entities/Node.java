package com.buildingmap3d.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="node_table")
public class Node {
	@Id
	@Column(name="node_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int nodeID;
	
	@Column(name="x")
	private double x;
	
	@Column(name="y")
	private double y;
	
	@Column(name="z")
	private double z;

	public Node() {
		super();
	}

	public Node(int nodeID, double x, double y, double z) {
		super();
		this.nodeID = nodeID;
		this.x = x;
		this.y = y;
		this.z = z;
	}

	public int getNodeID() {
		return nodeID;
	}

	public void setNodeID(int nodeID) {
		this.nodeID = nodeID;
	}

	public double getX() {
		return x;
	}

	public void setX(double x) {
		this.x = x;
	}

	public double getY() {
		return y;
	}

	public void setY(double y) {
		this.y = y;
	}

	public double getZ() {
		return z;
	}

	public void setZ(double z) {
		this.z = z;
	}

	@Override
	public String toString() {
		return "[nodeID=" + nodeID + ", x=" + x + ", y=" + y + ", z=" + z + "]";
	}
	

}
