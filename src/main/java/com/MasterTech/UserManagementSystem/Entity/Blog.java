package com.MasterTech.UserManagementSystem.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Blog {
	@Id
	private int id;
	private String heading;
	private String content;
	private String date;
	private String bloggername;
	public Blog() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Blog(int id, String heading, String content, String date, String bloggername) {
		super();
		this.id = id;
		this.heading = heading;
		this.content = content;
		this.date = date;
		this.bloggername = bloggername;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHeading() {
		return heading;
	}
	public void setHeading(String heading) {
		this.heading = heading;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getBloggername() {
		return bloggername;
	}
	public void setBloggername(String bloggername) {
		this.bloggername = bloggername;
	}
	@Override
	public String toString() {
		return "Blog [id=" + id + ", heading=" + heading + ", content=" + content + ", date=" + date + ", bloggername="
				+ bloggername + "]";
	}

}
