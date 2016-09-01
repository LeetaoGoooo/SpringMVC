<%@page contentType="text/html;chartset:UTF-8" language="java" %>
<html>
<head>
    <title>DataBaseManageMent</title>
    <link rel="stylesheet" type="text/css" href="/jslib/jeasyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/jslib/jeasyui/themes/icon.css">
    <script src="/jslib/jeasyui/jquery.min.js"></script>
    <script src="/jslib/jeasyui/jquery.easyui.min.js"></script>
</head>
<body>
    <table id="dg"></table>
<script>
    $('#dg').datagrid({
       url:'/getAllCityGridData',
       columns:[[
           {field:'id',hidden:true},
           {field:'cityid',tiltle:'城市id',width:80},
           {field:'gridid',title:'宫格编码',width:80},
           {field:'gridname',title:'宫格名称',width:120}
       ]]
    });
</script>
</body>
</html>
