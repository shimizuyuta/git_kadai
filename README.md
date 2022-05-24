
# Docker+Git入門課題

<h3> 環境(イメージ)</h3>
<ul>
  <li>ubuntu:latest</li>
  <li>nginx:nginx11</li>
</ul>

  
<h3> 環境構築手順</h3>

1.dockerfileを基にイメージを作成。cacheがあるとエラーに不具合が生じる場合があるため、cacheを含めない

```
docker build -t  nginx-ubuntu-image --no-cache .  
```

2.nginxの80番ポートとlocalhostの8080ポートを繋げ、コンテナを立ち上げる
```
docker run -p 8080:80 --name nginx-ubuntu-container
```


<img width="400" alt="qiita-square" src="https://user-images.githubusercontent.com/58338829/168478779-558f697f-48aa-4876-811f-d9765df9b20a.png">
![image](https://user-images.githubusercontent.com/58338829/168478779-558f697f-48aa-4876-811f-d9765df9b20a.png)
