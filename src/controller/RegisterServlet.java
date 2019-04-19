package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AccountDAO;
import dao.UserDAO;
import dao.UserDAOImpl;
import entities.Account;
import entities.Users;

/**
 * Servlet implementation class Register
 */

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO = new UserDAOImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name, username, password, phone, email;
		name = request.getParameter("name");
		password = request.getParameter("password");
		phone = request.getParameter("phone");
		username = request.getParameter("username");
		email = request.getParameter("email");
		try {
		/*	if (userDAO.checkUsername(username)) {
				request.setAttribute("message", "Tài khoản đã tồn tại");
				RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
				dispatcher.forward(request, response);
			} else {*/
				Users user = new Users();
				user.setUsername(username);
				user.setPassword(password);
				user.setName(name);
				user.setPhone(phone);
				user.setEmail(email);
				userDAO.addUser(user);
				response.sendRedirect("admin/login.jsp");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
