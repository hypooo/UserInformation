package fun.hypo.web.servlet;

import fun.hypo.domain.User;
import fun.hypo.service.UserService;
import fun.hypo.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * author:HYPO
 * date:2019/7/29 18:04
 * description:显示所有用户
 */
@WebServlet("/userListServlet")
public class UserListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //调用userService来查询
        UserService service = new UserServiceImpl();
        List<User> users = service.findAll();
        //存数据
        req.setAttribute("users", users);
        // 转发到list.jsp
        req.getRequestDispatcher("/list.jsp").forward(req, resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
