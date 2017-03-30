package org.project.service.user;

import java.util.List;

import javax.annotation.Resource;

import org.project.dao.user.FaultindicatorMapper;
import org.project.pojo.Faultindicator;
import org.springframework.stereotype.Service;


@Service
public class FaultindicatorServiceImpl implements FaultindicatorService {
	
	
	@Resource
	private FaultindicatorMapper mapper;
	
	

	public List<Faultindicator> getFaultindicatorList() {
		return mapper.getFaultindicatorList();
	}

	public Faultindicator getFaultindicator(Faultindicator faultindicator) {
		return mapper.getFaultindicator(faultindicator);
	}

}
