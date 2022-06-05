# Edit the docker-compose

- Change the <user> and <user_uid> for the linux user
- Replace <site> for the project name
- Note the volumes and their inside routing
- Note that "develop" space has all the variables with prefix "DEV_" this is setting in the .env
- Note that this project has SSL and would spect the keys necessaries

# Edit the data/nginx/conf.d/app.con

This project has two servers with two differnt ports

- Change the server_name and port of the vhosts
- The port is the exposed one in each Dockerfile
- Change <site> for the name of the project

# Setting the Dockerfiles

This project needs a Dockerfile per server, note that this is accomplished has a folder structure like <subdomain>/src/<Dockerfile>

- Copy the Dockerfile.example inside each subdomain as Dockerfile
- Change the <subdomain> with each folder created
- Expose the correct por needed

# For the .env

First set the variables in the main .env

- Change <public_ip> for the public IP
- Change <site> for the project name
- Change DB_HOST for the container name's db

After this you have to create a .env inside each <subdomain>/src folder

- Use the .env.subdomain.example 