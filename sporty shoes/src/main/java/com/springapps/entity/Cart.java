package com.springapps.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cart")
public class Cart {
	@Id
	private int Id;
	private String Brand;
	private int Mrp;
	private String Category;
	private String Description;
	private String Image;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getBrand() {
		return Brand;
	}
	public void setBrand(String brand) {
		Brand = brand;
	}
	public int getMrp() {
		return Mrp;
	}
	public void setMrp(int mrp) {
		Mrp = mrp;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	@Override
	public String toString() {
		return "Cart [Id=" + Id + ", Brand=" + Brand + ", Mrp=" + Mrp + ", Category=" + Category + ", Description="
				+ Description + ", Image=" + Image + "]";
	}
}
