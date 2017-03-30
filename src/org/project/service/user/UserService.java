package org.project.service.user;

import java.util.List;

import org.project.pojo.User;

public interface UserService {
	/**
	 * getUserList
	 * @return
	 */
	public List<User> getUserList();
	/**
	 * getUser
	 * @param user
	 * @return user
	 */
	public User getUser(User user);
	/**
	 * insertUser
	 * @param user
	 * @return int
	 */
	public int insertUser(User user);
	/**
	 * deleteUser
	 * @param user
	 * @return int
	 */
	public int deleteUser(User user);
	/**
	 * updateUser
	 * @param user
	 * @return int
	 */
	public int updateUser(User user);
}
