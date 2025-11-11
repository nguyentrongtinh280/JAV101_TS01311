package poly.com.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.catalina.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import poly.com.model.UserModel;

@WebServlet("/form/update")
public class FormController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		Map<String, Object> map = new HashMap<>();
//		map.put("fullname", "Nguyen Trong Tinh");
//		map.put("gender", true);
//		map.put("country", "VN");
//		
//		req.setAttribute("user", map);
		
		UserModel user = new UserModel();
		user.setFullname("Nguyen Trong Tinh 1");
		user.setGender(true);
		user.setCountry("VN");
		
		req.setAttribute("user", user);
		req.setAttribute("editable", true);
		
		req.getRequestDispatcher("/form.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fullname = req.getParameter("fullname");
		System.out.println(fullname);
		
		req.getRequestDispatcher("/form.jsp").forward(req, resp);
	}

}
