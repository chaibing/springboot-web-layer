package com.yr.service;

import com.yr.model.ProxyTeacher;

import java.util.List;

public interface ProxYTeacherService {
    public List<ProxyTeacher> getProxyTeacherCount(ProxyTeacher proxyTeacher);

    public List<ProxyTeacher> findAlladPageLimtit(int page, int limit);
}
