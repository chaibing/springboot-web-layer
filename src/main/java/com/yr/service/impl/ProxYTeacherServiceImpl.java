package com.yr.service.impl;

import com.yr.dao.ProxyTeacherDao;
import com.yr.model.ProxyTeacher;
import com.yr.model.Rank;
import com.yr.service.ProxYTeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author: chaiyingibng
 * @create: 2019-09-06 10:46
 **/
@Service
@Transactional
public class ProxYTeacherServiceImpl implements ProxYTeacherService {
    @Autowired
    private ProxyTeacherDao proxYTeacherDao;

    @Override
    public List<ProxyTeacher> getProxyTeacherCount(ProxyTeacher proxyTeacher) {
        List<ProxyTeacher> proxyTeacherCount = proxYTeacherDao.getProxyTeacherCount(proxyTeacher);
        return proxyTeacherCount;
    }

    @Override
    public List<ProxyTeacher> findAlladPageLimtit(int page, int limit) {
        int start = (page - 1) * limit;
        List<ProxyTeacher> alladPageLimtit = proxYTeacherDao.findAlladPageLimtit(start, limit);
        return alladPageLimtit;
    }


    @Override
    public List<Rank> findrank() {
        List<Rank> findrank = proxYTeacherDao.findrank();

        return findrank;
    }

    @Override
    public void addProxyTeacher(ProxyTeacher proxyTeacher) {
        proxYTeacherDao.addProxyTeacher(proxyTeacher);
    }

    @Override
    public List<ProxyTeacher> findAllProxyteacher() {
        List<ProxyTeacher> proxyTeacher = proxYTeacherDao.findAllProxyteacher();

        return proxyTeacher;
    }

    @Override
    public ProxyTeacher selectidcardByid(String cid) {

        ProxyTeacher proxyTeacher = proxYTeacherDao.selectidcardByid(cid);
        return proxyTeacher;
    }
}
