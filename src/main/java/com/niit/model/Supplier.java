package com.niit.model;

import javax.persistence.*;

@Entity
@Table
public class Supplier
{
	@Id
	int supId;
	
	String supName,supDesc;

	public int getSupId() {
		return supId;
	}

	public void setSupId(int supId) {
		this.supId = supId;
	}

	public String getSupName() {
		return supName;
	}

	public void setSupName(String supName) {
		this.supName = supName;
	}

	public String getSupDesc() {
		return supDesc;
	}

	public void setSupDesc(String supDesc) {
		this.supDesc = supDesc;
	}
	
	
}
