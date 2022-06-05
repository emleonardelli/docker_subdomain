ip=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | head -n 1)

docker run --name nginx --add-host="host:${ip}" -p 80:80 -d nginx
docker run --name nginx --add-host="host:${ip}" -p 443:443 -d nginx
docker run --name nginx --add-host="host:${ip}" -p 9001:9001 -d nginx
docker run --name nginx --add-host="host:${ip}" -p 9002:9002 -d nginx
docker run --name nginx --add-host="host:${ip}" -p 8080:8080 -d nginx