package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.TypeRoom;
import entities.Users;
import utils.HibernateUtil;

public class UserDAOImpl implements UserDAO {

	/**
	 * kiểm tra đăng nhập.
	 */
	public Users checkLogin(String username, String password) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("FROM Users WHERE username = :username AND password = :password");
			query.setString("username", username);
			query.setString("password", password);
			Users user = (Users) query.uniqueResult();
			transaction.commit();
			return user;
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

	/**
	 * 
	 * Kiểm tra tồn tại username.
	 */
	public boolean checkUsername(String username) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("FROM Users WHERE username = :username");
			query.setString("username", username);
			Users user = (Users) query.uniqueResult();
			transaction.commit();
			if (user != null) {
				return true;
			}
		} catch (Exception ex) {
			if (transaction != null) {
				transaction.rollback();
			}
			ex.printStackTrace();
		}
		return false;
	}

	/**
	 * Đăng kí.
	 */
	public boolean addUser(Users u) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(u);
			return true;
		} catch (Exception ex) {
			if (transaction != null) {
				transaction.rollback();
			}
			ex.printStackTrace();
		}
		return false;
	}

	/**
	 * 
	 * Lấy thông tin users thông qua username.
	 */
	public Users getUserByUsername(String username) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("FROM Users WHERE username = :username");
			query.setString("username", username);
			Users user = (Users) query.uniqueResult();
			transaction.commit();
			return user;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.UserDAO#createUser(entities.Users)
	 */
	@Override
	public boolean createUser(Users users) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(users);
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

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.UserDAO#updateUser(entities.Users)
	 */
	@Override
	public boolean updateUser(Users users) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.update(users);
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

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.UserDAO#getAll()
	 */
	@Override
	public List<Users> getAll() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("FROM Users");
			List<Users> list = query.list();
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

	/* (non-Javadoc)
	 * @see dao.UserDAO#getUserByID(int)
	 */
	@Override
	public Users getUserByID(int id) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Users user = (Users) session.get(Users.class, id);
			transaction.commit();
			return user;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	/* (non-Javadoc)
	 * @see dao.UserDAO#checkRegister(java.lang.String, java.lang.String)
	 */
	@Override
	public Users checkRegister(String username, String phone) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Query query = session.createQuery("FROM Users WHERE username = :username AND phone = :phone");
			query.setString("username", username);
			query.setString("phone", phone);
			Users user = (Users) query.uniqueResult();
			transaction.commit();
			return user;
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
