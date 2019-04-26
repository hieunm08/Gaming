package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import dao.UserDAOImpl;
import entities.Room;
import entities.Users;

/**
 * Servlet implementation class UserManager
 */
@WebServlet("/UserManager")
public class UserManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO = new UserDAOImpl();
	private static final DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserManager() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Date date = new Date();
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String id_user = request.getParameter("roomName");
		String username = request.getParameter("roomName");
		String password = request.getParameter("roomID");
		String role = request.getParameter("price");
		String name = request.getParameter("status");
		String phone = request.getParameter("typeRoomId");
		String email = request.getParameter("action");
		String gender = request.getParameter("roomID");
		String code = request.getParameter("price");
		String note = request.getParameter("status");
		String avatar = request.getParameter("typeRoomId");
		String action = request.getParameter("action");
		String birthday = request.getParameter("birthday");
		LocalDateTime now = LocalDateTime.now();
		String created_at = sdf.format(date);
		String updated_at = sdf.format(date);


		
		try {
			if (action.equals("create")) {
				userDAO.createUser(new Users(0, username, password, Integer.parseInt(role), name, phone, email, Boolean.parseBoolean(gender), code, note, avatar, birthday, created_at, updated_at));
				response.sendRedirect("users_manager.jsp");
			} else if (action.equals("update")) {
				userDAO.updateUser(new Users(Integer.parseInt(id_user), username, password, Integer.parseInt(role), name, phone, email, Boolean.parseBoolean(gender), code, note, avatar, birthday, created_at, updated_at));
				response.sendRedirect("users_manager.jsp");
			} else if (action.equals("delete")) {
				//userDAO.deleteRoom();
				response.sendRedirect("users_manager.jsp");
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("users_manager.jsp");
				requestDispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
