package poly.com.controller;

import java.io.IOException;

import org.apache.tomcat.util.codec.binary.Base64;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Bai3CookieAndSessionController extends HttpServlet {

	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = "";
        String password = "";

        // Đọc cookie từ trình duyệt
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("user".equals(cookie.getName())) {
                    String encoded = cookie.getValue();
                    byte[] bytes = Base64.decodeBase64(encoded);
                    String[] userInfo = new String(bytes).split(",");
                    if (userInfo.length >= 2) {
                        username = userInfo[0];
                        password = userInfo[1];
                    }
                }
            }
        }

        req.setAttribute("username", username);
        req.setAttribute("password", password);
        
        String msg = (String) req.getSession().getAttribute("message");
        req.setAttribute("message", msg);
        req.getSession().removeAttribute("message");

        req.getRequestDispatcher("/view/Bai3Login.jsp").forward(req, resp);
    }


	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember-me");

        if ("Tinh".equalsIgnoreCase(username) && "123".equals(password)) {
            req.getSession().setAttribute("username", username); // lưu session
            req.getSession().setAttribute("message", "Login successfully!");

            // Nếu chọn Remember me
            if (remember != null) {
                String userInfo = Base64.encodeBase64String((username + "," + password).getBytes());
                Cookie cookie = new Cookie("user", userInfo);
                cookie.setMaxAge(30 * 24 * 60 * 60); // 30 ngày
                cookie.setPath("/"); // hiệu lực toàn ứng dụng
                resp.addCookie(cookie);
            }

            resp.sendRedirect(req.getContextPath() + "/login");
        } else {
            req.getSession().setAttribute("message", "Invalid login info!");
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }
}
