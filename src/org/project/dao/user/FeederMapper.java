package org.project.dao.user;

import java.util.List;

import org.project.pojo.Feeder;

public interface FeederMapper {
	public List<Feeder> getFeederList();
	public Feeder getFeeder(Feeder feeder);
	
	

}
