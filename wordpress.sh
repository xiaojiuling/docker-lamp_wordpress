wget https://cn.wordpress.org/latest-zh_CN.tar.gz
tar -xvf latest-zh_CN.tar.gz -C ./lamp/httpd/htdocs
rm -rf ./lamp/httpd/htdocs/index && mv ./lamp/httpd/htdocs/wordpress/* ./lamp/httpd/htdocs
docker exec lamp-php docker-php-ext-install mysqli
docker restart lamp-php
chmod 777 ./lamp/httpd/htdocs
rm -rf ./latest-zh_CN.tar.gz
sleep 5s
docker exec lamp-mysql sh /mysql-create.sh
