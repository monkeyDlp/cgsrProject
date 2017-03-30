package org.project.service.user;

import java.util.List;

import org.project.pojo.YcData;

public interface YcDataService {
	public List<YcData> getYcDataList();
	
	public YcData getYcData(YcData ycData);

}
