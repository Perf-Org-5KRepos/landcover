git clone https://github.com/microsoft/landcover.git
cd landcover
git checkout feature/vm-arm-template
cd landcover
cd ARM/simple_docker_test
sudo docker build . -t simple-docker-test:1
sudo docker run --name test --mount type=bind,source="$(pwd)"/logs,target=/app/logs "simple-docker-test:1"
sudo echo "hello" >> log.log
