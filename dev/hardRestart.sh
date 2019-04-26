# change to the correct directory
parent_path=$( cd "$(dirname "$0")" ; pwd -P )
cd "$parent_path"

# remove docker file if it is already there
rm -f ../../docker-compose.yml

# copy docker file to root
cp ../docker/dc-dev.yml ../../docker-compose.yml

# change to the root directory
cd ../../

# stop the docker project
docker-compose stop

# stop the docker project
docker-compose build

# start up the docker project
docker-compose up -d

# show the logs
docker-compose logs -f --tail=500 web-ui api-endpoint