package org.project.service.user;

import java.util.List;

import org.project.pojo.Feeder;

public interface FeederService {
	
	public List<Feeder> getFeederList();
	
	public Feeder getFeeder(Feeder feeder);

}
