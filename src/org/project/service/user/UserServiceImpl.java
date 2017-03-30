package org.project.service.user;

import java.util.List;

import javax.annotation.Resource;

import org.project.dao.user.UserMapper;
import org.project.pojo.User;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper mapper;
	
	
	public int deleteUser(User user) {
		return mapper.deleteUser(user);
	}

	public User getUser(User user) {
		return mapper.getUser(user);
	}

	public List<User> getUserList() {
		return mapper.getUserList();
	}

	public int insertUser(User user) {
		return mapper.insertUser(user);
	}

	public int updateUser(User user) {
		return mapper.updateUser(user);
	}

}
