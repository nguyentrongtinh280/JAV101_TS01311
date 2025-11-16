package poly.com.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bai3")
public class Bai3Controller extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("name", "iPhone 2024");
		map.put("price", 12345.678);
		map.put("date", new java.util.Date());
		
		req.setAttribute("item", map);
		
		req.getRequestDispatcher("Bai3.jsp").forward(req, resp);
	}

}
