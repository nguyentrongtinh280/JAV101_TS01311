package poly.com.controller;

import java.io.IOException;
import java.time.DateTimeException;
import java.util.Date;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import poly.com.model.Staff;


@WebServlet("/bean-utils")
public class Bai1BeanUtilsController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/view/Bai1BeanUtils.jsp").forward(req, resp);
	}
	
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        Staff bean = new Staff();

        try {
            // Convert ngày
            DateTimeConverter dtc = new DateConverter(new Date());
            dtc.setPattern("MM/dd/yyyy");
            ConvertUtils.register(dtc, Date.class);
            BeanUtils.populate(bean, req.getParameterMap());
            bean.setHobbies(req.getParameterValues("hobbies"));
            req.setAttribute("staff", bean);
            req.getRequestDispatcher("/view/Bai1BeanUtilsResult.jsp").forward(req, resp);

        } catch (Exception e) {
            req.setAttribute("error", "Lỗi xử lý: " + e.getMessage());
            req.getRequestDispatcher("/view/Bai1BeanUtils.jsp").forward(req, resp);
        }
    }
	
}
