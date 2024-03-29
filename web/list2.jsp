<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>用户信息管理系统-分页查询</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>

    <script>
        function deleteUser(id) {
            if (confirm("确定要删除吗？")) {
                location.href = "${pageContext.request.contextPath}/deleteUserServlet?id=" + id;
            }
        }

        // 删除选中功能
        window.onload = function () {
            document.getElementById("deleteSelected").onclick = function () {
                if (confirm("确定要删除吗？")) {
                    var flag = false;
                    var cbs = document.getElementsByName("id");
                    for (var i = 0; i < cbs.length; i++) {
                        if (cbs[i].checked) {
                            flag = true;
                            break;
                        }
                    }
                    if (flag) {
                        document.getElementById("form").submit();
                    }
                }
            }

            //全选功能
            document.getElementById("selectAll").onclick = function () {
                var cbs = document.getElementsByName("id");
                for (var i = 0; i < cbs.length; i++) {
                    cbs[i].checked = this.checked;
                }
            }
        }
    </script>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">用户信息列表</h3>
    <div style="float: left">
        <form class="form-inline" action="${pageContext.request.contextPath}/findUserByPageServlet" method="post">
            <div class="form-group">
                <label for="input_xm">姓名</label>
                <input type="text" name="name" value="${conditions.name[0]}" class="form-control" id="input_xm">
            </div>
            <div class="form-group">
                <label for="input_jg">籍贯</label>
                <input type="text" name="address" value="${conditions.address[0]}" class="form-control" id="input_jg">
            </div>
            <div class="form-group">
                <label for="input_email">邮箱</label>
                <input type="text" name="email" value="${conditions.email[0]}" class="form-control" id="input_email">
            </div>
            <button type="submit" class="btn btn-default">查询</button>
        </form>
    </div>

    <div style="float: right;margin: 5px">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/findUserByPageServlet">刷新列表</a>
        <a class="btn btn-primary" href="add.jsp">添加联系人</a>
        <a class="btn btn-primary" href="javascript:void(0);" id="deleteSelected">删除选中</a>
    </div>

    <form id="form" action="${pageContext.request.contextPath}/deleteSelectedServlet" method="post">
        <table border="1" class="table table-bordered table-hover">
            <tr class="success">
                <td><input type="checkbox" id="selectAll"></td>
                <th>ID</th>
                <th>姓名</th>
                <th>性别</th>
                <th>年龄</th>
                <th>籍贯</th>
                <th>QQ</th>
                <th>邮箱</th>
                <th>操作</th>
            </tr>

            <c:forEach items="${pageBean.list}" var="user" varStatus="s">
                <tr>
                    <td><input type="checkbox" name="id" value="${user.id}"></td>
                    <td>${user.id}</td>
                    <td>${user.name}</td>
                    <td>${user.gender}</td>
                    <td>${user.age}</td>
                    <td>${user.address}</td>
                    <td>${user.qq}</td>
                    <td>${user.email}</td>
                    <td>
                        <a class="btn btn-default btn-sm"
                           href="${pageContext.request.contextPath}/findUserServlet?id=${user.id}">修改</a>&nbsp;
                        <a class="btn btn-default btn-sm" href="javascript:deleteUser(${user.id});">删除</a>
                    </td>
                </tr>
            </c:forEach>

        </table>
    </form>

    <div>
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li>
                    <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${pageBean.currentPage - 1}&name=${conditions.name[0]}&address=${conditions.address[0]}&email=${conditions.email[0]}"
                       aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>

                <c:forEach begin="1" end="${pageBean.totalPage}" var="i">
                    <c:if test="${pageBean.currentPage == i}">
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${i}&name=${conditions.name[0]}&address=${conditions.address[0]}&email=${conditions.email[0]}">${i}</a>
                        </li>
                    </c:if>

                    <c:if test="${pageBean.currentPage != i}">
                        <li>
                            <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${i}&name=${conditions.name[0]}&address=${conditions.address[0]}&email=${conditions.email[0]}">${i}</a>
                        </li>
                    </c:if>
                </c:forEach>

                <li>
                    <a href="${pageContext.request.contextPath}/findUserByPageServlet?currentPage=${pageBean.currentPage+1}&name=${conditions.name[0]}&address=${conditions.address[0]}&email=${conditions.email[0]}"
                       aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>

                <span style="font-size: 25px;margin-left: 10px">
                    共<span style="color: lightskyblue">${pageBean.totalCount}</span>条记录,
                    共<span style="color: lightskyblue">${pageBean.totalPage}</span>页
                </span>
            </ul>
        </nav>
    </div>


</div>
</body>
</html>
