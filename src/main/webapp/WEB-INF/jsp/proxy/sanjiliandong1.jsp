<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>layui在线调试</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css" media="all">

    <style>

    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/data.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/province.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/tianjia.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/tool.js"></script>

    <script type="text/javascript">
        $(function () {  //一开始初始化加载全部一级城市
            $.post(
                "area/Province",
                {},
                function (data) {
                    for (var i = 0; i < data.length; i++) {
                        $("#sheng").append("<option value='" + data[i].code + "'>" + data[i].name + "</option>")
                    }
                }
            )
        })

        function shi() {//加载二级城市
            var cid = $("#sheng").val();
            alert(cid);
            $.post(
                "area/city",
                {cid: cid},
                function (data) {
                    $("#area").empty();
                    for (var i = 0; i < data.length; i++) {
                        $("#area").append("<option value='" + data[i].code + "'>" + data[i].name + "</option>")
                    }
                }
            )
        }

        function xian() {
            var aid = $("#area").val();
            $.post(
                "area/area1",
                {aid: aid},
                function (data) {
                    $("#shop").empty();
                    for (var i = 0; i < data.length; i++) {
                        $("#shop").append("<option value='" + data[i].code + "'>" + data[i].name + "</option>")
                    }
                }
            )
        }

    </script>
</head>
<body>

<form action="addBook" method="post">
    <table>

        <tr>
            <td>省
                <select id="sheng" onchange="shi()" name="cid">
                    <option value="0">-请选择省-</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>市区
                <select id="area" onchange="xian()" name="aid">
                    <option value="0">-请选择市区-</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>县
                <select id="shop" onchange="" name="sid">
                    <option value="0">-请选择县-</option>

                </select>
            </td>
        </tr>
    </table>
</form>
</body>


</html>
