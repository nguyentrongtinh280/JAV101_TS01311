package poly.com.controller;

import java.io.IOException;

import org.apache.tomcat.util.codec.binary.Base64;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cookie-session")
public class Bai3CookieAndSessionControlle extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String username = "";
        String password = "";
        
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {

                // Chỉ lấy cookie tên "user"
                if ("user".equals(cookie.getName())) {
                    String encoded = cookie.getValue();

                    // Giải mã Base64
                    byte[] bytes = Base64.decodeBase64(encoded);
                    String decoded = new String(bytes);

                    // Tách username,password
                    String[] userInfo = decoded.split(",");

                    if (userInfo.length >= 2) {
                        username = userInfo[0];
                        password = userInfo[1];
                    }
                }
            }
        }

        req.setAttribute("username", username);
        req.setAttribute("password", password);

        req.getRequestDispatcher("/view/Bai3CookieAndSession.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember-me");

        if (username.equalsIgnoreCase("FPT") && password.equals("poly")) {

            req.setAttribute("message", "Login successfully");
            req.getSession().setAttribute("username", username);

            // Lưu cookie nếu chọn remember me
            if (remember != null) {
                byte[] bytes = (username + "," + password).getBytes();
                String userInfo = Base64.encodeBase64String(bytes);

                Cookie cookie = new Cookie("user", userInfo);
                cookie.setMaxAge(30 * 24 * 60 * 60);  // 30 ngày
                cookie.setPath("/");

                resp.addCookie(cookie);
            }

        } else {
            req.setAttribute("message", "Invalid login");
        }

        // Redirect về GET để load JSP
        resp.sendRedirect("/cookie-session");
    }
}
