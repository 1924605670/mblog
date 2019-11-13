### Mblog 开源Java博客系统, 支持多用户, 支持切换主题

[![Author](https://img.shields.io/badge/author-landy-green.svg?style=flat-square)](http://mtons.com)
[![JDK](https://img.shields.io/badge/jdk-1.8-green.svg?style=flat-square)](#)
[![Release](https://img.shields.io/github/release/langhsu/mblog.svg?style=flat-square)](https://github.com/langhsu/mblog)
[![license](https://img.shields.io/badge/license-GPL--3.0-green.svg)](https://github.com/langhsu/mblog/blob/master/LICENSE)
[![Docker](https://img.shields.io/docker/automated/langhsu/mblog.svg?style=flat-square)](https://hub.docker.com/r/langhsu/mblog)
[![QQ群](https://img.shields.io/badge/chat-Mtons-green.svg)](https://jq.qq.com/?_wv=1027&k=521CRdF)

### 技术选型：

* JDK8
* MySQL
* Spring-boot
* Spring-data-jpa
* Shiro
* Lombok
* Freemarker
* Bootstrap
* SeaJs

### 启动：
 - main方法运行
 ```xml
 配置：src/main/resources/application-mysql.yml (数据库账号密码)、新建db_mblog的数据库
 运行：src/main/java/com/mtons/mblog/BootApplication
 访问：http://localhost:9090/
 后台：http://localhost:9090/admin
 账号：默认管理员账号为 admin/123456
 
 TIPS: 
 如遇到启动失败/切换环境变量后启动失败的,请先maven clean后再尝试启动
 IDE得装lombok插件
 
 docker 部署：
 idea连接远程docker服务器，将镜像上传，服务器运行该程序：docker run -d -p 9090:9090 mblog
```
