# ubuntuの最新イメージにnginxをインストール,
#nginxの設定とデフォルトでアクセスした時に表示されるページ,port 80とローカルの8080を繋げる
FROM  ubuntu
RUN  apt-get update 
RUN  apt-get install nginx -y 
COPY ./default.conf /etc/nginx/conf.d/
COPY  ./index.html  /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
