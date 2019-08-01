package fun.hypo.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * author:HYPO
 * date:2019/8/1 21:43
 * description:
 */
@WebFilter("/*")
public class LoginFilter implements Filter {
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;

        String uri = request.getRequestURI();
        if (uri.contains("/login.jsp") || uri.contains("/loginServlet") || uri.contains("/checkCodeServlet")
                || uri.contains("/css/") || uri.contains("/js/") || uri.contains("/fonts/")) {//无需过滤的请求
            chain.doFilter(req, resp);
        } else {
            Object admin = request.getSession().getAttribute("admin");
            if (admin != null) {
                chain.doFilter(req, resp);
            } else {
                request.setAttribute("login_msg", "请先登录!");
                request.getRequestDispatcher("/login.jsp").forward(request, resp);
            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

    public void destroy() {
    }
}
