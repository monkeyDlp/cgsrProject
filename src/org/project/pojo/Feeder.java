package org.project.pojo;


public class Feeder {
	private Integer id;
	private String name;
	private Integer substationid;
	private Integer feederzoneid;
	private Integer voltageid;
	private Integer width;
	private Integer height;
	private String bgcolor;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getSubstationid() {
		return substationid;
	}
	public void setSubstationid(Integer substationid) {
		this.substationid = substationid;
	}
	public Integer getFeederzoneid() {
		return feederzoneid;
	}
	public void setFeederzoneid(Integer feederzoneid) {
		this.feederzoneid = feederzoneid;
	}
	public Integer getVoltageid() {
		return voltageid;
	}
	public void setVoltageid(Integer voltageid) {
		this.voltageid = voltageid;
	}
	public Integer getWidth() {
		return width;
	}
	public void setWidth(Integer width) {
		this.width = width;
	}
	public Integer getHeight() {
		return height;
	}
	public void setHeight(Integer height) {
		this.height = height;
	}
	public String getBgcolor() {
		return bgcolor;
	}
	public void setBgcolor(String bgcolor) {
		this.bgcolor = bgcolor;
	}
	
	@Override
	public String toString() {
		return "Feeder [id=" + id + ", name=" + name + ", substationid=" + substationid + "," +
				"feederzoneid="+ feederzoneid +",voltageid="+voltageid +",width="+width +",height="+height+",bgcolor="+bgcolor+"]";
	}
	
	
}
