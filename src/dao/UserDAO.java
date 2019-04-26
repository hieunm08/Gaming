/*
 * (C) Copyright 2019 To Present
 *
 * @author Hieu
 * @date Apr 18, 2019
 */

package dao;

import java.util.List;

import entities.Users;

/**
 * @author Hieu
 *
 */
public interface UserDAO {
	 Users checkLogin(String username, String password);
	 Users checkRegister(String username, String phone);
	 boolean checkUsername(String username);
	 boolean createUser(Users users);
	 boolean updateUser(Users users);
	 List<Users> getAll();
	 Users getUserByUsername(String username);
	 Users getUserByID(int id);

}
