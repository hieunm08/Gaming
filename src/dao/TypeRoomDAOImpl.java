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

import entities.TypeRoom;
import utils.HibernateUtil;

/**
 * @author Hieu
 *
 */
public class TypeRoomDAOImpl implements TypeRoomDAO {


	@Override
	public boolean createTypeRoom(TypeRoom typeRoom) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(typeRoom);
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
	public boolean updateTypeRoom(TypeRoom typeRoom) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.update(typeRoom);
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
	public boolean deleteTypeRoom(TypeRoom typeRoom) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.delete(typeRoom);
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
	public TypeRoom findTypeRoom(int typeRoomId) {
		 Session session = HibernateUtil.getSessionFactory().openSession();
	        Transaction transaction = null;
	        try {
	            transaction = session.beginTransaction();
	            Query query = session.createQuery("FROM category WHERE typeRoomId = :typeRoomId");
	            query.setInteger("typeRoomId", typeRoomId);
	            TypeRoom obj =  (TypeRoom) query.uniqueResult();
	            transaction.commit();
	            return obj;
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
	public List<TypeRoom> getAll() {
		 Session session = HibernateUtil.getSessionFactory().openSession();
	        Transaction transaction = null;
	        try {
	            transaction = session.beginTransaction();
	            Query query = session.createQuery("FROM TypeRoom");
	            List<TypeRoom> list = query.list();
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

}
