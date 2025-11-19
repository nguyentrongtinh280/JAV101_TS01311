package poly.com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bai2")
public class Bai2Controller extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setAttribute("message", "Welcome to FPT Polytechnic");
		Map<String, Object> map = new HashMap<>();
		map.put("fullname", "Nguyễn Trọng Tính");
		map.put("gender", "Male");
		map.put("country", "Việt Nam");
		req.setAttribute("user", map);
		
		req.setAttribute("page", "bai2.jsp"); 
        req.getRequestDispatcher("index.jsp").forward(req, resp);
		
	}
}
