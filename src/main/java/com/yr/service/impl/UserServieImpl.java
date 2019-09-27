package com.yr.service.impl;

import com.yr.dao.UserDao;
import com.yr.model.User;
import com.yr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author: chaiyingibng
 * @create: 2019-09-27 15:13
 **/
@Service
@Transactional
public class UserServieImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public Integer register(String username, String password) {
        return userDao.register(username, password);
    }

    @Override
    public User getUserName(String username) {
        return userDao.getUserName(username);
    }

    @Override
    public User login(String username, String password) {
        return userDao.getUser(username, password);
    }


}
