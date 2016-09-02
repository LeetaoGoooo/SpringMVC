### DataBaseManagement
关于SpringMVC的数据库管理的简单样例,Restful WebService

### 开发工具
Intelli IDEA

### 环境搭建
可以参考[使用IntelliJ IDEA开发SpringMVC网站](http://my.oschina.net/gaussik/blog/385697)<p>

### 数据库
MySQL

### 前后台交互以及数据格式
通过*ajax*向后台发用请求<p>
通过*JSON*格式的数据实现前后台的数据交换

### 运行
将项目下载下来导入到IDEA,然后修改*resource/jdbc.properties*的第2、3、4行,将*rest.sql*导入到相应数据库,<p>
配置*Tomcat*运行.

### api
*/getAllCityGridData*  获取所有数据 <p>
*/getCityGridData/{id}*    根据id获取某条详细信息 <p>
*/delCityGridData/{id}*    根据id删除某条详细信息 <p>
*/insertCityGridData*   插入信息 <p>
*/updateCityGridData*   更新信息 <p>


