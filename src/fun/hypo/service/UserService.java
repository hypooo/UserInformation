package fun.hypo.service;

import fun.hypo.domain.Admin;
import fun.hypo.domain.PageBean;
import fun.hypo.domain.User;

import java.util.List;
import java.util.Map;

/**
 * author:HYPO
 * date:2019/7/29 18:05
 * description:
 */
public interface UserService {
    /*
     * 查询管理员信息
     *
     * @param admin
     * @return
     */
    Admin login(Admin admin);

    /**
     * 查询所有用户信息
     *
     * @return
     */
    List<User> findAll();

    void addUser(User user);

    void deleteUser(String id);

    User findUserById(String id);

    void updateUser(User user);

    void deleteSelected(String[] ids);

    PageBean<User> findUserByPage(String currentPage, Map<String, String[]> conditions);
}
