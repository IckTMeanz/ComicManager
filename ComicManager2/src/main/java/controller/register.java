package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.userDAO;
import model.user;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
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
		// TODO Auto-generated method stub
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String cfpassword=request.getParameter("confirmpassword");
		String fullname=request.getParameter("fullname");
		request.setAttribute("username", username);
		request.setAttribute("fullname", fullname);
		String url = "";
		
		String baoLoi = "";

		if(!userDAO.getInstance().checkUsername(username)) {
			baoLoi +="Tên đăng nhập đã tồn tại, vui lòng chọn tên đăng nhập khác.<br/>";
		}
		
		if(!password.equals(cfpassword)) {
			baoLoi +="Mật khẩu không khớp.<br/>";
		}
		
		request.setAttribute("baoLoi", baoLoi);
		
		
		if(baoLoi.length()>0) {
			url = "/register.jsp";
		}else {
			
			user nu = new user(userDAO.getInstance().getUserId(), username, password, fullname);
			userDAO.getInstance().insert1(nu);
			url = "/success.jsp";
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	
		doGet(request, response);
	}

}
