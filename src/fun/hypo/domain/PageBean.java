package fun.hypo.domain;

import java.util.List;

/**
 * author:HYPO
 * date:2019/7/31 13:28
 * description:分页对象
 */
public class PageBean<E> {
    private static final int count = 10;//每页的记录数
    private int totalCount;//总记录数
    private int totalPage;//分页数
    private int currentPage;//当前页数
    private List<E> list;//每页的数据

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getCount() {
        return count;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public List<E> getList() {
        return list;
    }

    public void setList(List<E> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "PageBean{" +
                "totalCount=" + totalCount +
                ", count=" + count +
                ", totalPage=" + totalPage +
                ", currentPage=" + currentPage +
                ", list=" + list +
                '}';
    }
}
