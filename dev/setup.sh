# change to the correct directory
parent_path=$( cd "$(dirname "$0")" ; pwd -P )
cd "$parent_path"

# move to root directory
cd ../../

# clone the repositories
git clone git@github.com:vibage/web-ui.git
git clone git@github.com:vibage/api-endpoint.git

# install nessissary modules
cd web-ui
npm install

cd ../api-endpoint
npm install

cd ..

# build the docker project
./scripts/dev/build.sh
