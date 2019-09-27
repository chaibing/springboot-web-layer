package com.yr.service;


import com.yr.dao.UserDao;
import com.yr.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface UserService {

    public Integer register(String username, String password);

    public User getUserName(String username);


    public User login(String username, String password);


/*

    public User getOldPwd(String username, String oldpwd) {
        return userDao.getUser(username, oldpwd);
    }


    public int changePwd(String username, String oldPassword, String repassword) {

        return userDao.changePwd(username, oldPassword, repassword);
    }


    public int uploadPic(String picUrl, String username) {
        // TODO Auto-generated method stub
        return userDao.uploadPic(picUrl, username);
    }


    public User editUser(User user) {

        return userDao.editUser(user);
    }
*/


}
