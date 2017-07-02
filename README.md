# Rhymix Docker-compose
> This docker-compose conatins
1. nginx:1.13.1-alpine
2. php:7.1.5-fpm
3. mariadb:10.3.0
4. redis:latest

## How to Use
### 1. Clone this git
```
git clone https://github.com/devjiro76/rhymix_docker.git
```

### 2. Make this project as your owns
```
rm -rf ./.git
```

### 3. Set your DB Info
Open the `docker-compose.yml`  
and modify `<DB_PASSWORD>` things to which you want.

### 4. Run 'init.sh' to get Rhymix lastest version
```
sh init.sh
```
It will clone the lastest version of Rhymix from github and run docker-compose up in background.

### 5. Set the Rhymix
Open your browser and start installing rhymix.  
http://localhost/ (or `http://<MACHINE_IP>/`)

1. Input `mariadb` in *DB Server Address* field.
2. Input `<XE_DB>` in *DB ID* field.
3. Input `<USER_PASSWORD>` in *DB password* field.
4. Input `<XE_DB>` in *DB Name* field.

### 6. Set Redis for Caching
After finishing  install Rhymix and go to admin page.
```
http://localhost/admin (or `http://<MACHINE_IP>/admin`)
```
1. Go to *System Config* page and find cache section.
2. Select *redis* to use redis as cache
3. Input *redis* in *Host* field.

### FINISH ###
**For your Info**
1. DB HOST Address = mariadb
2. Redis HOST Address = redis
