package org.project.dao.user;

import java.util.List;

import org.project.pojo.YcData;

public interface YcDataMapper {
	public List<YcData> getYcDataList();
	public YcData getYcData(YcData ycData);

}
