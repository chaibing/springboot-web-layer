<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
<script src="layui/layui.js"></script>

</head>
<body class="layui-layout-body ">
<div class="layui-layout  layui-layout-admin">
    <div class="layui-header ">
        <div class="layui-logo">后台管理</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav  layui-layout-left">
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="${pageContext.request.contextPath}/${sessionScope.user.picture}" class="layui-nav-img">
                    ${sessionScope.user.username}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="/userFaceEdit" target="option">基本资料</a></dd>
                    <!-- <dd><a href="">安全设置</a></dd> -->
                </dl>
            </li>
            <li class="lay  ui-nav-item"><a href="layuiadmin/loginout">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree " lay-filter="test">

                <li class="layui-nav-item">
                    <a href="javascript:;">用户管理</a>
                    <dl class="layui-nav-child">
                        <dd data-name="edit"><a href="/userEdit" target="option">修改信息</a></dd>
                        <dd data-name="pwd"><a href="/pwd" target="option">修改密码</a>
                        </dd>
                    </dl>
                <li class="layui-nav-item">
                    <a href="javascript:;">招生老师管理</a>
                    <dl class="layui-nav-child">
                        <dd data-name="edit"><a href="/proxyTeacher" target="option">招生老师基本信息</a></dd>
                        <dd data-name="pwd"><a href="/pwd" target="option">来访记录</a></dd>
                    </dl>

                <li class="layui-nav-item">
                    <a href="javascript:;">学生管理</a>
                    <dl class="layui-nav-child">
                        <dd data-name="edit"><a href="/proxyTeacher" target="option">学生基本信息</a></dd>
                        <dd data-name="pwd"><a href="/pwd" target="option">学生考试成绩录入</a></dd>
                        <dd data-name="pwd"><a href="/pwd" target="option">考试成绩查询</a></dd>
                        <dd data-name="edit"><a href="/proxyTeacher" target="option">分班系统</a></dd>

                    </dl>
                <li class="layui-nav-item">
                    <a href="javascript:;">财务</a>
                    <dl class="layui-nav-child">
                        <dd data-name="edit"><a href="/proxyTeacher" target="option">招生老师报销审核</a></dd>
                        <dd data-name="pwd"><a href="/pwd" target="option">学生缴费信息</a></dd>
                        <dd data-name="pwd"><a href="/pwd" target="option">学生家长来校报销</a></dd>
                        <dd data-name="pwd"><a href="/pwd" target="option">招生老师提成</a></dd>
                        <dd data-name="pwd"><a href="/pwd" target="option">学生缴费信息</a></dd>
                    </dl>


            </ul>
        </div>
    </div>

    <div class="layui-body" id="LAY_app_body">
        <!-- 内容主体区域 -->
        <div class="layadmin-tabsbody-item layui-show"></div>


        <div style="padding: 15px;height:100%">


            <iframe id="option" name="option" src="/users"
                    style="overflow: visible;" scrolling="no" frameborder="no" width="100%" height="100%"></iframe>

        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © itxdl.cn
        </div>
    </div>

    <script>
        //JavaScript代码区域
        layui.use('element', function () {
            var element = layui.element;

        });
    </script>

</body>
</html>