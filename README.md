# docker-nata2

## server

### create image

```console
$ git clone https://github.com/Konboi/docker-nata2.git
$ docker-nata2/server
$ docker build .-t nata2-server
```

### create database

```console
$ mysql -u DB_USERNAME -p DB_PASSWORD
mysql> CRATE DATABASE nata2
mysql> exit
```

### launch server

```console
$ docker run -e DB_URL=mysql2://DB_USERNAME:DB_PASSWORD@DB_HOST/nata2 bundle exec ridgepole -c '{ adapter: mysql2, database: nata2, username: DB_USERNAME, password: DB_PASSWORD, host: DB_HOST }' --apply # migration at first
$ docker run -e DB_URL=mysql2://DB_USERNAME:DB_PASSWORD@DB_HOST/nata2 -d -p 9292:9292  nata2-server
```
