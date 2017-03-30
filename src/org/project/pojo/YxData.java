package org.project.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class YxData {
	private Integer bjlx;
	private Integer bjid;
	private Integer bjcs;
	private Double val;
	private Date freshtm;
	
	public Integer getBjlx() {
		return bjlx;
	}
	public void setBjlx(Integer bjlx) {
		this.bjlx = bjlx;
	}
	public Integer getBjid() {
		return bjid;
	}
	public void setBjid(Integer bjid) {
		this.bjid = bjid;
	}
	public Integer getBjcs() {
		return bjcs;
	}
	public void setBjcs(Integer bjcs) {
		this.bjcs = bjcs;
	}
	public Double getVal() {
		return val;
	}
	public void setVal(Double val) {
		this.val = val;
	}
	public String getFreshtm() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return formatter.format(freshtm);
	}
	public void setFreshtm(Date freshtm) {
		this.freshtm = freshtm;
	}
	
	@Override
	public String toString() {
		return "YxData [bjlx=" + bjlx + ", bjid=" + bjid + ", bjcs=" + bjcs
				+ ", val=" + val + ", freshtm=" + freshtm + "]";
	}
}
