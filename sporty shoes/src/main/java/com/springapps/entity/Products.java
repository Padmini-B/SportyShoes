package com.springapps.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name="products")
public class Products {
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
		return "Products [Id=" + Id + ", Brand=" + Brand + ", Mrp=" + Mrp + ", Category=" + Category + ", Description="
				+ Description + ", Image=" + Image + "]";
	}
}
