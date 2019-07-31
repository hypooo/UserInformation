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
 * date:2019/7/29 23:52
 * description:
 */
@WebServlet("/deleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String id = req.getParameter("id");
        String currentPage = req.getParameter("currentPage");

        UserService service = new UserServiceImpl();
        service.deleteUser(id);

        resp.sendRedirect(req.getContextPath() + "/findUserByPageServlet");
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
