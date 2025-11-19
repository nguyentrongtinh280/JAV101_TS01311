package poly.com.controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import poly.com.model.Country;

@WebServlet("/bai2")
public class Bai2Controller extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Country> list = List.of(
				new Country("VN", "Viet Nam"),
				new Country("US", "United Stated"),
				new Country("CN", "China")
				
				);
		
		req.setAttribute("countries", list);
		
		req.setAttribute("page", "Bai2.jsp"); 
        req.getRequestDispatcher("index.jsp").forward(req, resp);
		//req.getRequestDispatcher("/Bai2.jsp").forward(req, resp);
	}
}
