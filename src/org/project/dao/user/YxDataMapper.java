package org.project.dao.user;

import java.util.List;

import org.project.pojo.YxData;

public interface YxDataMapper {
	public List<YxData> getYxDataList();
	public YxData getYxData(YxData yxData);

}
