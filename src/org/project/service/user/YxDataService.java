package org.project.service.user;

import java.util.List;

import org.project.pojo.YxData;

public interface YxDataService {
	public List<YxData> getYxDataList();
	
	public YxData getYxData(YxData yxData);

}
