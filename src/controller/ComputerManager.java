package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Computer;
import dao.ComputerDAO;
import dao.ComputerDAOImpl;
/**
 * Servlet implementation class ComputerManager
 */
@WebServlet("/ComputerManager")
public class ComputerManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ComputerDAO computerDAO = new ComputerDAOImpl();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComputerManager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String computerId = request.getParameter("computerId");
		String codeComputer = request.getParameter("codeComputer");
		String statusComputerId = request.getParameter("statusComputerId");
		String roomID = request.getParameter("id_room");
		String action = request.getParameter("action");
		try {
			if (action.equals("create")) {
				computerDAO.createComputer(new Computer(0, codeComputer, Integer.parseInt(statusComputerId),Integer.parseInt(roomID)));
				response.sendRedirect("computer_manager.jsp");
			} else if (action.equals("update")) {
				computerDAO.updateComputer(new Computer(Integer.parseInt(computerId), codeComputer, Integer.parseInt(statusComputerId),Integer.parseInt(roomID)));
				response.sendRedirect("computer_manager.jsp");
			} else if (action.equals("delete")) {
				computerDAO.deleteComputer(new Computer(Integer.parseInt(computerId), codeComputer, Integer.parseInt(statusComputerId),Integer.parseInt(roomID)));
				response.sendRedirect("computer_manager.jsp");
			} else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin/computer_manager.jsp");
				requestDispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
