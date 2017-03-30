package org.project.dao.user;

import java.util.List;

import org.project.pojo.Faultindicator;

public interface FaultindicatorMapper {
	
	public List<Faultindicator> getFaultindicatorList();
	
	public Faultindicator getFaultindicator(Faultindicator faultindicator);
	
	

}
