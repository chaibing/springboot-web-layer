package com.yr.dao;

import com.yr.entity.User;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;


@Repository
public interface UserDao {
	
	public User getUser(String username, String password);

	public int changePwd(String username, String oldPassword, String repassword);

	public int uploadPic(String picUrl, String username);

	public User editUser(User user);
 
	public User getUserName(String username);

	public int regUser(String username, String password);
}
