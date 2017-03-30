package org.project.service.user;

import java.util.List;

import javax.annotation.Resource;

import org.project.dao.user.FeederMapper;
import org.project.pojo.Feeder;
import org.springframework.stereotype.Service;


@Service
public class FeederServiceImpl implements FeederService {
	
	@Resource
	private FeederMapper mapper;

	public List<Feeder> getFeederList() {
		// TODO Auto-generated method stub
		return mapper.getFeederList();
	}

	public Feeder getFeeder(Feeder feeder) {
		// TODO Auto-generated method stub
		return mapper.getFeeder(feeder);
	}

}
