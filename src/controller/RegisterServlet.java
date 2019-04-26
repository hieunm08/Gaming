package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import dao.UserDAOImpl;
import entities.Users;
import service.MD5;

/**
 * Servlet implementation class Register
 */

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO = new UserDAOImpl();
	private static final DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

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
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		Date date = new Date();
		String name, username, password, phone, email;
		name = request.getParameter("name");
		password = request.getParameter("password");
		phone = request.getParameter("phone");
		username = request.getParameter("username");
		email = request.getParameter("email");
		LocalDateTime now = LocalDateTime.now();
		String created_at = sdf.format(date);
		String updated_at = sdf.format(date);
		String avatar = 
		

		try {
			if (userDAO.checkUsername(username)) {
			 response.getWriter().write("<img src=\"img/not-available.png\" />");
				request.setAttribute("message", "Account already exists!!!");
				RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
				dispatcher.forward(request, response);
			} else {
				Users user = new Users();
				user.setUsername(username);
				user.setPassword(MD5.encryption(password));
				user.setName(name);
				user.setPhone(phone);
				user.setEmail(email);
				user.setCreated_at(created_at);
				user.setUpdated_at(updated_at);
				userDAO.createUser(user);
				request.setAttribute("message", "successfully , please login!");
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
				dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
