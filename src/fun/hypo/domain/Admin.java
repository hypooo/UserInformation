package fun.hypo.domain;

/**
 * author:HYPO
 * date:2019/7/29 19:58
 * description:
 */
public class Admin {
    private String name;
    private String password;

    @Override
    public String toString() {
        return "Admin{" +
                "name='" + name + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
