package poly.com.controller;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import poly.com.model.Item;

@WebServlet("/giohang")
public class Bai5Controller extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<Item> items = new ArrayList<Item>();
		items.add(new Item("Áo sơ mi", "hinh1.png", 915, 0.5));
		items.add(new Item("Áo phông", "hinh2.png", 800, 0.8));
		items.add(new Item("Áo khoác", "hinh3.png", 1250, 0.2));
		items.add(new Item("Quần jean", "hinh1.png", 950, 0.1));
		items.add(new Item("Quần short", "hinh2.png", 430, 0.6));
		items.add(new Item("Quần Baggy", "hinh6.png", 870, 0.8));
		
		req.setAttribute("items", items);
		
//		req.setAttribute("page", "GioHang.jsp"); 
//        req.getRequestDispatcher("index.jsp").forward(req, resp);
		req.getRequestDispatcher("GioHang.jsp").forward(req, resp);
		
		
	}

}