package org.project.service.user;

import java.util.List;

import org.project.pojo.Faultindicator;

public interface FaultindicatorService {
	
	public List<Faultindicator> getFaultindicatorList();
	
	public Faultindicator getFaultindicator(Faultindicator faultindicator);

}
