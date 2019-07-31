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

/**
 * author:HYPO
 * date:2019/7/30 0:23
 * description:
 */
@WebServlet("/findUserServlet")
public class FindUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String id = req.getParameter("id");

        UserService service = new UserServiceImpl();
        User user = service.findUserById(id);

        //将user信息转发到update.jsp
        req.setAttribute("user", user);
        req.getRequestDispatcher("/update.jsp").forward(req, resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
