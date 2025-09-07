package com.clinic.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.clinic.model.DoctorAdmin;

@Repository
public class DoctorAdminDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public DoctorAdmin verifyLogin(String username, String password) {
        Session session = sessionFactory.openSession();
        Query<DoctorAdmin> query = session.createQuery(
            "FROM DoctorAdmin WHERE username = :username AND password = :password", DoctorAdmin.class);
        query.setParameter("username", username);
        query.setParameter("password", password);

        DoctorAdmin admin = null;
        try {
            admin = query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.close();
        return admin;
    }
}
