package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ServiceDAO;
import dao.ServiceDAOImpl;
import dao.TypeRoomDAO;
import dao.TypeRoomDAOImpl;
import entities.Service;
import entities.TypeRoom;

/**
 * Servlet implementation class ServiceManager
 */
@WebServlet("/ServiceManager")
public class ServiceManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServiceDAO serviceDAO = new ServiceDAOImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServiceManager() {
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

		String id_service = request.getParameter("id_service");
		String nameService = request.getParameter("typeRoomID");
		String priceService = request.getParameter("priceService");
		String id_type=request.getParameter("id_type");
		String note = request.getParameter("note");
		
		String action = request.getParameter("action");
		doGet(request, response);

		try {
			if (action.equals("create")) {
				serviceDAO.createService(new Service(0,nameService,Integer.parseInt(priceService),Integer.parseInt(id_type),note));
				response.sendRedirect("service_manager.jsp");
			} else if (action.equals("update")) {
				serviceDAO.updateService(new Service(Integer.parseInt(id_service),nameService, Integer.parseInt(priceService),Integer.parseInt(id_type),note));
				response.sendRedirect("service_manager.jsp");
			} else if (action.equals("delete")) {
				serviceDAO.deleteService(new Service(Integer.parseInt(id_service), nameService,Integer.parseInt(priceService),Integer.parseInt(id_type), note));
				response.sendRedirect("service_manager.jsp");
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin/service_manager.jsp");
				requestDispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}