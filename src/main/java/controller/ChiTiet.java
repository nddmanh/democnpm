package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.KyThuDAO;
import dao.TranDauDAO;
import model.KyThu;
import model.TranDau;

/**
 * Servlet implementation class ChiTiet
 */
@WebServlet("/chitiet")
public class ChiTiet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTiet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int vongDau = Integer.parseInt(request.getParameter("vongDau"));
		int idKyThu = Integer.parseInt(request.getParameter("idKyThu"));
		
		KyThuDAO kyThuDAO = new KyThuDAO();
		KyThu kt = kyThuDAO.getKyThuById(idKyThu);
		
		TranDauDAO tranDauDAO = new dao.TranDauDAO();
		List<TranDau> kqKetQuaTrans = tranDauDAO.getTranDaus(vongDau, idKyThu);
		
		request.setAttribute("tenkt", kt);
        request.setAttribute("listtd", kqKetQuaTrans);
        request.setAttribute("vong", vongDau);
        
		RequestDispatcher dispatcher = request.getRequestDispatcher("gdChiTiet.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
