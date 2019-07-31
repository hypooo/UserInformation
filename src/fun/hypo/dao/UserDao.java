package fun.hypo.dao;

import fun.hypo.domain.Admin;
import fun.hypo.domain.User;

import java.util.List;
import java.util.Map;

/**
 * author:HYPO
 * date:2019/7/29 18:08
 * description:
 */
public interface UserDao {

    Admin login(String name, String password);

    List<User> findAll();

    void add(User user);

    void delete(int id);

    User findById(int id);

    void update(User user);

    int findTotalCount(Map<String, String[]> conditions);

    List<User> findByPage(int start, int count, Map<String, String[]> conditions);
}
