package fun.hypo.service.impl;

import fun.hypo.dao.UserDao;
import fun.hypo.dao.impl.UserDaoImpl;
import fun.hypo.domain.Admin;
import fun.hypo.domain.PageBean;
import fun.hypo.domain.User;
import fun.hypo.service.UserService;

import java.util.List;
import java.util.Map;

/**
 * author:HYPO
 * date:2019/7/29 18:07
 * description:
 */
public class UserServiceImpl implements UserService {
    private UserDao dao = new UserDaoImpl();

    @Override
    public Admin login(Admin admin) {
        return dao.login(admin.getName(), admin.getPassword());
    }

    @Override
    public List<User> findAll() {
        //调用dao查询
        return dao.findAll();
    }

    @Override
    public void addUser(User user) {
        dao.add(user);
    }

    @Override
    public void deleteUser(String id) {
        dao.delete(Integer.parseInt(id));
    }

    @Override
    public User findUserById(String id) {
        return dao.findById(Integer.parseInt(id));
    }

    @Override
    public void updateUser(User user) {
        dao.update(user);
    }

    @Override
    public void deleteSelected(String[] ids) {
        for (String id : ids) {
            dao.delete(Integer.parseInt(id));
        }
    }

    @Override
    public PageBean<User> findUserByPage(String _currentPage, Map<String, String[]> conditions) {
        if (_currentPage == null || "".equals(_currentPage)) {
            _currentPage = "1";
        }

        int currentPage = Integer.parseInt(_currentPage);

        if (currentPage <= 0) {
            currentPage = 1;
        }

        PageBean<User> pageBean = new PageBean<User>();
        pageBean.setCurrentPage(currentPage);

        int totalCount = dao.findTotalCount(conditions);
        pageBean.setTotalCount(totalCount);

        int start = (currentPage - 1) * pageBean.getCount();
        List<User> list = dao.findByPage(start, pageBean.getCount(), conditions);
        pageBean.setList(list);

        int totalPage = (totalCount % pageBean.getCount() == 0) ? (totalCount / pageBean.getCount()) : (totalCount / pageBean.getCount() + 1);
        pageBean.setTotalPage(totalPage);

        return pageBean;
    }
}
