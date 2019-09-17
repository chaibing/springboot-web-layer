//新增
function chaibing() {
    edit(null, "新增");
}

//打开编辑框
function edit() {
    alert("sdaf")


    /*向后台发送数据  start*/
    layui.use(['form', 'layer', 'table'], function () {
        var table = layui.table
            , form = layui.form, $ = layui.$;

        table.render({
            elem: '#test'  //绑定table id
            , url: 'sys/menu'  //数据请求路径
            , cellMinWidth: 80
            , cols: [[
                {type: 'numbers'}
                , {field: 'name', title: '菜单名称'}
                , {field: 'parentName', title: '父菜单名称', width: 150}
                , {field: 'url', title: '菜单路径'}
                , {field: 'perms', title: '菜单权限'}
                , {field: 'type', title: '类型'}
                , {field: 'icon', title: '图标'}
                , {field: 'orderNum', title: '排序'}
                , {fixed: 'right', title: '操作', width: 180, align: 'center', toolbar: '#toolBar'}//一个工具栏  具体请查看layui官网
            ]]
            , page: true   //开启分页
            , limit: 10   //默认十条数据一页
            , limits: [10, 20, 30, 50]  //数据分页条
            , id: 'testReload'
        });
    });
    /*向后台发送数据  end*/


    layer.open({
        type: 1,
        title: title,
        fixed: false,
        resize: false,
        shadeClose: true,
        area: ['900px', '500px'],//调试弹框大小  宽  高
        content: $('#setRole'),
        /* end: function () {
             cleanRole();
         }*/
    });
}
