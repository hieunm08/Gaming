package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RoomDAO;
import dao.RoomDAOImpl;
import dao.TypeRoomDAO;
import dao.TypeRoomDAOImpl;
import entities.Room;

/**
 * Servlet implementation class RoomServlet
 */
@WebServlet("/RoomServlet")
public class RoomManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RoomDAO roomDAO = new RoomDAOImpl();
	private TypeRoomDAO typeRoomDAO = new TypeRoomDAOImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RoomManager() {
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
		doGet(request, response);

		String roomName = request.getParameter("roomName");
		String roomID = request.getParameter("roomID");
		String price = request.getParameter("price");
		String status = request.getParameter("status");
		String typeRoomId = request.getParameter("typeRoomId");
		String action = request.getParameter("action");
		Room room = new Room();
		try {
			if (action.equals("create")) {
				roomDAO.createRoom(new Room(0, roomName, price, Integer.parseInt(status), Integer.parseInt(typeRoomId)));
				response.sendRedirect("admin/room.jsp");
			} else if (action.equals("update")) {
				roomDAO.updateRoom(new Room(Integer.parseInt(roomID), roomName, price, Integer.parseInt(status), Integer.parseInt(typeRoomId)));
				response.sendRedirect("admin/room.jsp");
			} else if (action.equals("delete")) {
				roomDAO.deleteRoom(room);
				response.sendRedirect("admin/room.jsp");
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin/room.jsp");
				requestDispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
