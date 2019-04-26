# change to the correct directory
parent_path=$( cd "$(dirname "$0")" ; pwd -P )
cd "$parent_path"

# remove docker file if it is already there
rm ../../docker-compose.yml

# copy docker file to root
cp ../docker/dc-dev.yml ../../docker-compose.yml

# change to the root directory
cd ../../

# stop the docker project
docker-compose build
