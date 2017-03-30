package org.project.service.user;

import java.util.List;

import javax.annotation.Resource;

import org.project.dao.user.YxDataMapper;
import org.project.pojo.YxData;
import org.springframework.stereotype.Service;

@Service
public class YxDataServiceImpl implements YxDataService {
	
	@Resource
	private YxDataMapper mapper;

	public List<YxData> getYxDataList() {
		return mapper.getYxDataList();
	}

	public YxData getYxData(YxData yxData) {
		return mapper.getYxData(yxData);
	}

}
