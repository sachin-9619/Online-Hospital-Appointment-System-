package com.clinic.DAO;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.List;
import java.text.SimpleDateFormat;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.clinic.model.Appointment;

@Repository
public class AppointmentDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void saveAppointment(Appointment appt) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.save(appt);
            session.getTransaction().commit();
        }
    }

    public List<Appointment> getTodayAndUpcomingAppointments() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery(
                "FROM Appointment WHERE date >= :today ORDER BY date, time", Appointment.class)
                .setParameter("today", new Date(System.currentTimeMillis()))
                .list();
        }
    }

    public List<Appointment> findByDate(LocalDate localDate) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery(
                "FROM Appointment WHERE date = :date", Appointment.class)
                .setParameter("date", Date.valueOf(localDate))
                .list();
        }
    }

    public void deleteByDate(java.util.Date date) {
        try (Session session = sessionFactory.openSession()) {
            session.beginTransaction();
            session.createQuery("DELETE FROM Appointment WHERE date = :date")
                .setParameter("date", new Date(date.getTime()))
                .executeUpdate();
            session.getTransaction().commit();
        }
    }

    public List<Appointment> findAppointmentsBetween(Timestamp start, Timestamp end) {
        try (Session session = sessionFactory.openSession()) {
            SimpleDateFormat timeFormat = new SimpleDateFormat("hh:mm a");
            String startTime = timeFormat.format(start);
            String endTime = timeFormat.format(end);

            return session.createQuery(
                "FROM Appointment WHERE date = CURRENT_DATE AND time BETWEEN :startTime AND :endTime ORDER BY time",
                Appointment.class)
                .setParameter("startTime", startTime)
                .setParameter("endTime", endTime)
                .list();
        }
    }

    public List<Appointment> getAllAppointments() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("FROM Appointment", Appointment.class).list();
        }
    }
}
