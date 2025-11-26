package poly.com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import poly.com.dao.UserDAO;
import poly.com.model.User;

@WebServlet("/account/login")
public class LoginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();
    }
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/view/account/Login.jsp").forward(req, resp);
	}
	
	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        User user = userDAO.checkLogin(email, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("currentUser", user); 
            /*
            if (user.isRole()) {
                response.sendRedirect(request.getContextPath() + "/admin/home");
            } else {
                response.sendRedirect(request.getContextPath() + "/admin/news");
            }*/

        } else {
            request.setAttribute("error", "Email hoặc mật khẩu không đúng.");
            doGet(request, response); 
        }
    }
}
