<%@page contentType="text/html;chartset:UTF-8" language="java" %>
<html>
<head>
    <title>DataBaseManageMent</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
    <div class="col-lg-offset-3">
        <table id="grid" class="table"></table>
        <form role="form">
            <div class="form-group">
                <label for="cityid">Cityid</label>
                <input type="text" class="form-control" id="cityid" placeholder="gridid">
            </div>
            <div class="form-group">
                <label for="gridid">gridid</label>
                <input type="text" class="form-control" id="gridid" placeholder="gridid">
            </div>
            <div class="form-group">
                <label for="gridname"></label>
                <input type="text" class="form-control" id="gridname" placeholder="gridid">
            </div>
            <button type="button" onclick="saveGridData()">保存</button>
        </form>
    </div>
</div>
<script>
    $(document).ready(function(){
        loadGridData();
    });
    var loadGridData = function () {
        $.post('/getAllCityGridData',{},function(data){
            var gridData = JSON.parse(data);
            var gridInnerHTML = '<tr><td>ID</td><td>CityId</td><td>GridId</td><td>GridName</td></tr>';
            for(var i = 0 ; i < gridData.length; i++) {
                gridInnerHTML += "<tr><td>"+gridData[i].id+"</td><td>"+gridData[i].cityid+"</td><td>"+gridData[i].gridid+"</td><td>"+gridData[i].gridname+"</td></tr>";
            }
            $('#grid')[0].innerHTML = gridInnerHTML;
        });
    };

    var saveGridData = function ()  {
        var obj = {};
        obj.cityid = $('#cityid')[0].value;
        obj.gridid = $('#gridid')[0].value;
        obj.gridname = $('#gridname')[0].value;
        $.post('/insertCityGridData',{objJSON:JSON.stringify(obj)},function(data){
            var obj = JSON.parse(data);
            if(obj.status == 'ok'){
                alert(obj.msg);
            }else{
                alert(obj.msg);
            }
        });

    }
</script>
</body>
</html>
