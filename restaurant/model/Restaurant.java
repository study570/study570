package com.group2.springboot.restaurant.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.group2.springboot.utils.SystemUtils;

@Entity
@Table(name = "restaurant")
@Component("restaurant")
public class Restaurant {
	@Id
	@Column(name = "RID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int rid;

	@Column(name = "RNAME")
	private String rname;

	@Column(name = "RDES")
	private String rdes;

	@Column(name = "RTEL")
	private String rtel;

	@Column(name = "RADR")
	private String radr;

	@Column(name = "RSORT")
	private String rsort;

	@Column(name = "mimeType")
	String mimeType;

	// 圖片
	@JsonIgnore
	@Column(name = "blogPhoto")
	Blob blogPhoto;

	// 不要將下面這個作成資料庫欄位
	@Transient
	String pictureString;

	// 拿來取前端input file
	@Transient
	MultipartFile blogImage;

	public Restaurant(int rid, String rname, String rdes, String rtel, String radr, String rsort) {
		super();
		this.rid = rid;
		this.rname = rname;
		this.rdes = rdes;
		this.rtel = rtel;
		this.radr = radr;
		this.rsort = rsort;
		this.mimeType = mimeType;

	}

	public Restaurant() {

	}

	public int getRid() {
		return rid;
	}

	public void setRid(int rid) {
		this.rid = rid;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRdes() {
		return rdes;
	}

	public void setRdes(String rdes) {
		this.rdes = rdes;
	}

	public String getRtel() {
		return rtel;
	}

	public void setRtel(String rtel) {
		this.rtel = rtel;
	}

	public String getRadr() {
		return radr;
	}

	public void setRadr(String radr) {
		this.radr = radr;
	}

	public String getRsort() {
		return rsort;
	}

	public void setRsort(String rsort) {
		this.rsort = rsort;
	}

	public String getMimeType() {
		return mimeType;
	}

	public void setMimeType(String mimeType) {
		this.mimeType = mimeType;
	}

	public Blob getBlogPhoto() {
		return blogPhoto;
	}

	public void setBlogPhoto(Blob blogPhoto) {
		this.blogPhoto = blogPhoto;
	}

	public String getPictureString() {
		return SystemUtils.blobToDataProtocol(mimeType, blogPhoto);
	}

	public void setPictureString(String pictureString) {
		this.pictureString = pictureString;
	}

	public MultipartFile getBlogImage() {
		return blogImage;
	}

	public void setBlogImage(MultipartFile blogImage) {
		this.blogImage = blogImage;
	}

}
