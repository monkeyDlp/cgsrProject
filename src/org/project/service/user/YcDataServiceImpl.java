package org.project.service.user;

import java.util.List;

import javax.annotation.Resource;

import org.project.dao.user.YcDataMapper;
import org.project.pojo.YcData;

import org.springframework.stereotype.Service;

@Service
public class YcDataServiceImpl implements YcDataService {
	
	@Resource
	private YcDataMapper mapper;

	public List<YcData> getYcDataList() {
		return mapper.getYcDataList();
	}

	public YcData getYcData(YcData ycData) {
		return mapper.getYcData(ycData);
	}

	
	

}
