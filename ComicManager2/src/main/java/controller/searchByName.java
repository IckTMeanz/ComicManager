package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import DAO.comicDAO;
import model.comic;

/**
 * Servlet implementation class searchByName
 */
@WebServlet("/searchByName")
public class searchByName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchByName() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String name=request.getParameter("search");
		//String numpageforSearch=request.getParameter("pageSearch");
		//if(numpageforSearch==null) {
		String	numpageforSearch="1";
		//}
		HttpSession ss= request.getSession(false);
		ArrayList<comic> list=comicDAO.getInstance().getInfo(name);
		
		if(ss!=null) {
			ss.setAttribute("list", list);
			ss.setAttribute("numpageforSearch", numpageforSearch);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/comicSearch.jsp");
			rd.forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
