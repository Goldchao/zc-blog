
#### 使用说明

1. 使用IDE导入本项目
2. 新建数据库`CREATE DATABASE zb-shiro;`
3. 导入数据库`docs/db/zb-blog.sql`
4. 修改(`resources/application.yml`)配置文件
   1. 数据库链接属性(可搜索`datasource`或定位到L.15) 
   2. redis配置(可搜索`redis`或定位到L.28)
5. 运行项目(三种方式)
   1. 项目根目录下执行`mvn -X clean package -Dmaven.test.skip=true`编译打包，然后执行`java -jar zb-shiro/target/zb-shiro.jar`
   2. 项目根目录下执行`mvn springboot:run`
   3. 直接运行`ShiroBootApplication.java`
6. 浏览器访问`http://localhost:8080`
7. 使用账号密码admin,123456登录系统后台进行七牛云存储配置



**本博客系统著作权，解释权归zblog所有**<br/>
**使用本博客部署上线，需注明poered by zblog**
默认底部无需修改，已实现，如图：
![底部示例图](https://gitee.com/supperzh/zb-blog/raw/master/docs/img/footer.png?v=1.0)
