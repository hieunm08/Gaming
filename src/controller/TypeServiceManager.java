package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TypeServiceDAO;
import dao.TypeServiceDAOImpl;
import entities.TypeRoom;
import entities.TypeService;

/**
 * Servlet implementation class TypeServiceManager
 */
@WebServlet("/TypeServiceManager")
public class TypeServiceManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TypeServiceDAO typeServiceDAO = new TypeServiceDAOImpl();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TypeServiceManager() {
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
		String id_type = request.getParameter("id_type");
		String name_type = request.getParameter("name_type");
		String action = request.getParameter("action");
		try {
			if (action.equals("create")) {
				typeServiceDAO.createTypeService(new TypeService(0, name_type));
				response.sendRedirect("typeService_manager.jsp");
			} else if (action.equals("update")) {
				typeServiceDAO.updateTypeService(new TypeService(Integer.parseInt(id_type), name_type));
				response.sendRedirect("typeService_manager.jsp");
			} else if (action.equals("delete")) {
				typeServiceDAO.deleteTypeService(new TypeService(Integer.parseInt(id_type), name_type));
				response.sendRedirect("typeService_manager.jsp");
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin/typeService_manager.jsp");
				requestDispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}
