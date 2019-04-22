package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import dao.UserDAOImpl;
import entities.Users;

/**
 * Servlet implementation class Authentication
 */
@WebServlet("/Authentication")
public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO = new UserDAOImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Authentication() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession(false)!=null)
		{
			request.getSession(false).invalidate();
		}
		response.sendRedirect("admin/login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		Users users = userDAO.checkLogin(username, password);
		try {
			if (users != null) {
				/*int role = userDAO.getUserByUsername(username).getRole();
				if (role == 0) {
					session.setMaxInactiveInterval(100000);
					session.setAttribute("username", "admin");
					response.sendRedirect("admin/index.jsp");
				}*/
				session.setMaxInactiveInterval(100000);
				session.setAttribute("username", "admin");
				response.sendRedirect("admin/index.jsp");
			} else {
				request.setAttribute("message", "Tài khoản hoặc mật khẩu không chính xác");
				response.sendRedirect("admin/index.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
