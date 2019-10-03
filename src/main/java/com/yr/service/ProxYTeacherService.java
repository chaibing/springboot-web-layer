package com.yr.service;

import com.yr.model.ProxyTeacher;
import com.yr.model.Rank;

import java.util.List;

public interface ProxYTeacherService {
    public List<ProxyTeacher> getProxyTeacherCount(ProxyTeacher proxyTeacher);

    public List<ProxyTeacher> findAlladPageLimtit(int page, int limit);

    public List<Rank> findrank();

    public void addProxyTeacher(ProxyTeacher proxyTeacher);

    public List<ProxyTeacher> findAllProxyteacher();

    public ProxyTeacher selectidcardByid(String cid);
}
