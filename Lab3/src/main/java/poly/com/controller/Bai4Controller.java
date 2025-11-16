package poly.com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bai4")
public class Bai4Controller extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<>();
		map.put("title", "Tieu de ban tin");
		map.put("content", "Noi dung ban tin, hello");
		req.setAttribute("item", map);
		
		req.getRequestDispatcher("Bai4.jsp").forward(req, resp);
	}

}
