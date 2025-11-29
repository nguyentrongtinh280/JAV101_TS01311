package poly.com.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import poly.com.utils.Email;
import jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet("/send-email")
public class Bai2SendEmailController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/view/Bai2SendEmail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    req.setCharacterEncoding("UTF-8");

	    // 1. Lấy dữ liệu từ Form
	    String from = req.getParameter("from");
	    String to = req.getParameter("to");
	    String subject = req.getParameter("subject");
	    String body = req.getParameter("body");

	    // 2. Lấy file đính kèm (có thể null nếu không chọn file)
	    Part attachment = req.getPart("attachment"); 

	    String message = "";

	    try {
	        // 3. Gửi Email, có hoặc không có đính kèm
	    	Email.sendEmail(from, to, subject, body, attachment);
	        message = "Gửi thành công! Email đã được gửi đi.";
	    } catch (Exception e) {
	        message = "Gửi thất bại: " + e.getMessage();
	        System.err.println(message);
	    }

	    // 4. Phản hồi lại trang JSP
	    req.setAttribute("message", message);
	    req.getRequestDispatcher("/view/Bai2SendEmail.jsp").forward(req, resp);
	}


}
