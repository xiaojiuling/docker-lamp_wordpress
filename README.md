# docker-lamp

```shell
lamp
├── httpd                                       httpd的数据存放目录
│   ├── conf                                    httpd的配置文件目录
│   │   ├── extra                               httpd子配置文件目录
│   │   │   ├── httpd-autoindex.conf
│   │   │   ├── httpd-dav.conf
│   │   │   ├── httpd-default.conf
│   │   │   ├── httpd-info.conf
│   │   │   ├── httpd-languages.conf
│   │   │   ├── httpd-manual.conf
│   │   │   ├── httpd-mpm.conf
│   │   │   ├── httpd-multilang-errordoc.conf
│   │   │   ├── httpd-ssl.conf
│   │   │   ├── httpd-userdir.conf
│   │   │   ├── httpd-vhosts.conf
│   │   │   ├── php.conf
│   │   │   └── proxy-html.conf
│   │   ├── httpd.conf                            httpd主配置文件
│   │   ├── magic
│   │   ├── mime.types
│   │   └── original                              用于httpd子配置文件的恢复
│   │       ├── extra
│   │       │   ├── httpd-autoindex.conf
│   │       │   ├── httpd-dav.conf
│   │       │   ├── httpd-default.conf
│   │       │   ├── httpd-info.conf
│   │       │   ├── httpd-languages.conf
│   │       │   ├── httpd-manual.conf
│   │       │   ├── httpd-mpm.conf
│   │       │   ├── httpd-multilang-errordoc.conf
│   │       │   ├── httpd-ssl.conf
│   │       │   ├── httpd-userdir.conf
│   │       │   ├── httpd-vhosts.conf
│   │       │   └── proxy-html.conf
│   │       └── httpd.conf
│   └── htdocs                                      网站目录所放置的目录
├── mysql                                           MySQL数据目录
│   ├── conf
│   │   └── mysql                                   配置MySQL配置文件目录
│   │       ├── conf.d
│   │       └── mysql.conf.d
│   ├── data                                        MySQL存放数据目录，很重要
│   │   └── mysql
│   └── log                                         MySQL日志目录
│       ├── mysqld.log
│       └── yum.log
└── php                                             php数据目录
    └── etc                                         PHP配置文件目录
        ├── pear.conf
        ├── php                                     PHP主配置文件目录
        │   ├── conf.d
        │   │   └── docker-php-ext-sodium.ini
        │   ├── php.ini
        │   ├── php.ini-development
        │   └── php.ini-production
        ├── php-fpm.conf                            PHP-fpm配置文件
        ├── php-fpm.conf.default                    PHP-fpm配置文件备份
        └── php-fpm.d                               PHP-fpm子配置文件
            ├── docker.conf
            ├── www.conf
            ├── www.conf.default
            └── zz-docker.conf
```

详细介绍了lamp文件后，就可以通过docke-compose编排工具，和wordpress.sh脚本进行WordPress的构建
使用docker构建lamp平台
```shell
docker-compose up -d
```
> 当然我们要确保我们的Linux服务器上已经安装了docker及docker-compose工具。使用以上命令启动LAMP平台，后续我们可以使用脚本工具进行构建 WordPresss
在构建脚本之前，请确保`http://ip`已经可以访问到php初始化页面
>
```shell
sh wordpress.sh
```
> 使用以上命令来对现有的docker容器进行修改，用来构建WordPress博客
访问只需要`http://ip`就可以访问到所构建好的WordPress
在安装WordPress的时候参数
>
|  参数   | 值  |
|  ----  | ----  |
| 数据库名称  | wordpress |
| 用户名  | root |
| 密码  |   123@abcD|
| 数据库 | 10.177.1.4 |
| 表头 |    wp_     |
