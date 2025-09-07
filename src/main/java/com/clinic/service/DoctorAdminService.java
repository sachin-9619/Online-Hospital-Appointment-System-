package com.clinic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clinic.DAO.DoctorAdminDAO;
import com.clinic.model.DoctorAdmin;

@Service
public class DoctorAdminService {

    @Autowired
    private DoctorAdminDAO doctorAdminDAO;

    public boolean validateLogin(String username, String password) {
        DoctorAdmin admin = doctorAdminDAO.verifyLogin(username, password);
        return admin != null;
    }
}
