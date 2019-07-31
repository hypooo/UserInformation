package fun.hypo.dao.impl;

import fun.hypo.dao.UserDao;
import fun.hypo.domain.Admin;
import fun.hypo.domain.User;
import fun.hypo.util.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * author:HYPO
 * date:2019/7/29 18:10
 * description:
 */
public class UserDaoImpl implements UserDao {

    private JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public Admin login(String name, String password) {
        try {
            String sql = "select * from admin where name = ? and password = ?";
            return template.queryForObject(sql, new BeanPropertyRowMapper<Admin>(Admin.class), name, password);
        } catch (DataAccessException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<User> findAll() {
        //使用jdbc查询
        String sql = "select * from user order by id";
        return template.query(sql, new BeanPropertyRowMapper<User>(User.class));
    }

    @Override
    public void add(User user) {
        String sql = "insert into user values(null,?,?,?,?,?,?)";
        template.update(sql, user.getName(), user.getGender(), user.getAge(),
                user.getAddress(), user.getQq(), user.getEmail());
    }

    @Override
    public void delete(int id) {
        String sql = "delete from user where id = ?";
        template.update(sql, id);
    }

    @Override
    public User findById(int id) {
        String sql = "select * from user where id = ?";
        return template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), id);
    }

    @Override
    public void update(User user) {
        String sql = "update user set name = ?,gender = ?,age = ?,address = ?,qq = ?,email = ? where id = ?";
        template.update(sql, user.getName(), user.getGender(), user.getAge(),
                user.getAddress(), user.getQq(), user.getEmail(), user.getId());
    }

    @Override
    public int findTotalCount(Map<String, String[]> conditions) {
        String sql = "select count(*) from user where 1 = 1 ";
        StringBuilder sb = new StringBuilder(sql);

        //遍历map集合
        Set<String> keySet = conditions.keySet();
        List<Object> elements = new ArrayList<Object>();
        for (String key : keySet) {
            if ("currentPage".equals(key)) {//跳过第一个参数
                continue;
            }
            String value = conditions.get(key)[0];
            if (value != null && !"".equals(value)) {
                sb.append(" and ").append(key).append(" like ? ");
                elements.add("%" + value + "%");
            }
        }
        sql = sb.toString();
        return template.queryForObject(sql, Integer.class, elements.toArray());
    }

    @Override
    public List<User> findByPage(int start, int count, Map<String, String[]> conditions) {
        String sql = "select * from user where 1 = 1 ";
        StringBuilder sb = new StringBuilder(sql);

        //遍历map集合
        Set<String> keySet = conditions.keySet();
        List<Object> elements = new ArrayList<Object>();
        for (String key : keySet) {
            if ("currentPage".equals(key)) {//跳过第一个参数
                continue;
            }
            String value = conditions.get(key)[0];
            if (value != null && !"".equals(value)) {
                sb.append(" and ").append(key).append(" like ? ");
                elements.add("%" + value + "%");
            }
        }
        sb.append("limit ? , ?");
        elements.add(start);
        elements.add(count);

        sql = sb.toString();
        return template.query(sql, new BeanPropertyRowMapper<User>(User.class), elements.toArray());
    }
}
