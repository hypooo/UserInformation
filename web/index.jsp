<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>首页</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
    </script>
</head>
<body>

<div align="center" style="font-size: 25px; margin-top: 50px">
    管理员${admin.name},欢迎您,${lastTime}
</div>
<div align="center" style="margin-top: 20px">
    <a href="${pageContext.request.contextPath}/userListServlet" style="text-decoration:none;font-size:33px">
        显示所有用户信息
    </a>
    <br>
    <a href="${pageContext.request.contextPath}/findUserByPageServlet" style="text-decoration:none;font-size:33px">
        分页显示所有用户信息
    </a>
</div>
</body>
</html>