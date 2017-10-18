package com.niit.DAO;

import java.util.List;

import com.niit.model.Supplier;

public interface SupplierDao
{
	public boolean addSupplier(Supplier supplier);
	public List<Supplier> retrieveSupplier();
	public Supplier getSupplier(int catId);
	public boolean updateSupplier(Supplier supplier);
	public boolean deleteSupplier(Supplier supplier);
}
