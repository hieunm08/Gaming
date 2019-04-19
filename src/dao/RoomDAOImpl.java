/*
 * (C) Copyright 2019 To Present
 *
 * @author Hieu
 * @date Apr 18, 2019
 */

package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.Room;
import utils.HibernateUtil;

/**
 * @author Hieu
 *
 */
public class RoomDAOImpl implements RoomDAO {

	@Override
	public List<Room> getAll() {
		 Session session = HibernateUtil.getSessionFactory().openSession();
	        Transaction transaction = null;
	        try {
	            transaction = session.beginTransaction();
	            Query query = session.createQuery("FROM Room");
	            List<Room> list = query.list();
	            transaction.commit();
	            return list;
	        } catch (Exception ex) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            ex.printStackTrace();
	        } finally {
	            session.flush();
	            session.close();
	        }
		return null;
	}

	@Override
	public boolean createRoom(Room room) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(room);
            transaction.commit();
            return true;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return false;
	}


	@Override
	public boolean updateRoom(Room room) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.update(room);
            transaction.commit();
            return true;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
		return false;
	}

	@Override
	public boolean deleteRoom(Room room) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.delete(room);
            transaction.commit();
            return true;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
        return false;

	}

}
