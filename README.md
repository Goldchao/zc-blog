# zb-blog

#### 项目介绍
精简的博客系统，完美自适应。满足您的强迫症<br/>
#### 技术栈
Spring Boot、Shiro、MyBatis、Redis、mysql、thymeleaf<br/>

![JDK](https://img.shields.io/badge/JDK-1.8-green.svg)
![Maven](https://img.shields.io/badge/Maven-3.3.9-green.svg)
![MySQL](https://img.shields.io/badge/MySQL-5.6.24-green.svg)
![Redis](https://img.shields.io/badge/Redis-3.0.503-green.svg)
[![license](https://img.shields.io/badge/license-MIT-yellow.svg)](https://gitee.com/supperzh/zb-shiro/blob/master/LICENSE)

可以加[QQ群130512958](http://shang.qq.com/wpa/qunwpa?idkey=dad3420aea2111ee98653f703f61bc504bfcd6dd85d1766a344523d7e353ad43)交流技术！

#### 特点
1. 程序员的编辑器：markdown编辑器-simplemde。
2. 自写完美的分页器。
3. 精简的评论模块（cookie）。
4. 全系统简单配置，即可运行。（见部署方式）。
5. 集成七牛云存储。
6. 完备的后台权限管理模块。

项目前台预览：[www.nbclass.com](http://www.nbclass.com)<br/>
项目后台预览：[admin.nbclass.com](http://admin.nbclass.com)<br/>
**用户密码**
账号：admin 密码：123456<br/>

**如果喜欢，请多多分享！！多多Star！！**


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



#### 其他开源项目
[zb-shiro权限系统](https://gitee.com/supperzh/zb-shiro)<br/>
[zplayer音乐播放器](https://gitee.com/supperzh/zplayer)

#### 参与贡献

1. Fork 本项目
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request

#### 图片预览

1.首页：<br/>![首页](https://gitee.com/supperzh/zb-blog/raw/master/docs/img/blog-index.png?v=1.0)
2.文章详情页：<br/>![文章详情页](https://gitee.com/supperzh/zb-blog/raw/master/docs/img/blog-article.png?v=1.0)
<br/>
3.发布文章：<br/>![发布文章](https://gitee.com/supperzh/zb-blog/raw/master/docs/img/admin-publish.png?v=1.0)
<br/>
4.后台文章管理：<br/>![后台文章管理](https://gitee.com/supperzh/zb-blog/raw/master/docs/img/admin-article.png?v=1.0)
<br/>
5.后台评论管理：<br/>![后台评论管理](https://gitee.com/supperzh/zb-blog/raw/master/docs/img/admin-comment.png?v=1.0)
<br/>
6.后台七牛云配置：<br/>![后台七牛云配置](https://gitee.com/supperzh/zb-blog/raw/master/docs/img/admin-qiniu.png?v=1.0)
<br/>


