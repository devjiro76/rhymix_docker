git clone --progress --verbose https://github.com/rhymix/rhymix.git "web"
mkdir web/files
chmod 777 web/files
su -c "setenforce 0"
docker-compose up -d --build
docker-compose ps
