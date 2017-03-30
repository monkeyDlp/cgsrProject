package org.project.service.user;

import java.util.List;

import javax.annotation.Resource;

import org.project.dao.user.RtuMapper;
import org.project.pojo.Rtu;
import org.springframework.stereotype.Service;


@Service
public class RtuServiceImpl implements RtuService {
	
	@Resource
	private RtuMapper mapper;

	public List<Rtu> getRtuList() {
		return mapper.getRtuList();
	}

	public Rtu getRtu(Rtu rtu) {
		return mapper.getRtu(rtu);
	}

}
