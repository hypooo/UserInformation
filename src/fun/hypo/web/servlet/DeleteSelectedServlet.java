package fun.hypo.web.servlet;

import fun.hypo.service.UserService;
import fun.hypo.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * author:HYPO
 * date:2019/7/30 20:08
 * description:
 */
@WebServlet("/deleteSelectedServlet")
public class DeleteSelectedServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String[] ids = req.getParameterValues("id");

        UserService service = new UserServiceImpl();
        service.deleteSelected(ids);

        resp.sendRedirect(req.getContextPath() + "/findUserByPageServlet");
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
