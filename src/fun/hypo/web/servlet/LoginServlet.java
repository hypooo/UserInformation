package fun.hypo.web.servlet;

import fun.hypo.domain.Admin;
import fun.hypo.service.UserService;
import fun.hypo.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/**
 * author:HYPO
 * date:2019/7/29 19:51
 * description:
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码
        req.setCharacterEncoding("UTF-8");
        //获取数据
        String verifyCode = req.getParameter("verifyCode");
        //验证码校验
        HttpSession session = req.getSession();
        String checkCode_server = (String) session.getAttribute("CHECKCODE_SERVER");
        session.removeAttribute("CHECKCODE_SERVER");//确保验证码一次性

        if (!checkCode_server.equalsIgnoreCase(verifyCode)) {
            req.setAttribute("login_msg", "验证码错误");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
            return;
        }

        Map<String, String[]> map = req.getParameterMap();
        //封装admin对象
        Admin admin = new Admin();
        try {
            BeanUtils.populate(admin, map);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }

        //调用service查询
        UserService service = new UserServiceImpl();
        Admin loginAdmin = service.login(admin);
        //判断是否登录成功
        if (loginAdmin != null) {
            session.setAttribute("admin", loginAdmin);
            resp.sendRedirect(req.getContextPath() + "/index.jsp");
        } else {
            req.setAttribute("login_msg", "用户名或密码错误");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
