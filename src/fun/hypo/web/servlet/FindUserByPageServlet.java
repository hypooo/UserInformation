package fun.hypo.web.servlet;

import fun.hypo.domain.PageBean;
import fun.hypo.domain.User;
import fun.hypo.service.UserService;
import fun.hypo.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

/**
 * author:HYPO
 * date:2019/7/31 13:43
 * description:
 */
@WebServlet("/findUserByPageServlet")
public class FindUserByPageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String currentPage = req.getParameter("currentPage");
        Map<String, String[]> conditions = req.getParameterMap();

        UserService service = new UserServiceImpl();
        PageBean<User> pageBean = service.findUserByPage(currentPage, conditions);

        req.setAttribute("pageBean", pageBean);
        req.setAttribute("conditions", conditions);
        req.getRequestDispatcher("/list2.jsp").forward(req, resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
