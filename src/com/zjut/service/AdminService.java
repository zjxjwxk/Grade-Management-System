package com.zjut.service;

import com.zjut.bean.Admin;
import com.zjut.dao.AdminDao;

import java.util.List;

public class AdminService {

    public Admin queryAdminService(String ID) {
        
        AdminDao adminDao = new AdminDao();
        List<Admin> adminList = adminDao.queryAdminPwd(ID);
        Admin admin = adminList.get(0);
        return admin;
    }
}
