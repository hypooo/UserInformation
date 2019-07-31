package fun.hypo.web.servlet;

import fun.hypo.domain.User;
import fun.hypo.service.UserService;
import fun.hypo.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/**
 * author:HYPO
 * date:2019/7/29 23:13
 * description:
 */
@WebServlet("/addUserServlet")
public class AddUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        User user = new User();
        Map<String, String[]> map = req.getParameterMap();
        try {
            BeanUtils.populate(user, map);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }

        UserService service = new UserServiceImpl();
        service.addUser(user);

        resp.sendRedirect(req.getContextPath() + "/findUserByPageServlet");

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
