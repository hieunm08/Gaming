package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TypeRoomDAO;
import dao.TypeRoomDAOImpl;
import entities.TypeRoom;

/**
 * Servlet implementation class TypeRoomManager
 */
@WebServlet("/TypeRoomManager")
public class TypeRoomManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TypeRoomDAO typeRoomDAO = new TypeRoomDAOImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TypeRoomManager() {
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
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String typeRoomName = request.getParameter("typeRoomName");
		String typeRoomID = request.getParameter("typeRoomID");
		String note = request.getParameter("note");
		String action = request.getParameter("action");
		try {
			if (action.equals("create")) {
				typeRoomDAO.createTypeRoom(new TypeRoom(0, typeRoomName, note));
				response.sendRedirect("admin/typeRoom_manager.jsp");
			} else if (action.equals("update")) {
				typeRoomDAO.updateTypeRoom(new TypeRoom(Integer.parseInt(typeRoomID), typeRoomName, note));
				response.sendRedirect("admin/typeRoom_manager.jsp");
			} else if (action.equals("delete")) {
				typeRoomDAO.deleteTypeRoom(new TypeRoom(Integer.parseInt(typeRoomID), typeRoomName, note));
				response.sendRedirect("admin/typeRoom_manager.jsp");
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin/typeRoom_manager.jsp");
				requestDispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
