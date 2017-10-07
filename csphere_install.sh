docker pull  registry.docker-cn.com/csphere/csphere
docker run -d --restart=always --name=csphere-controller -v /home/billwang/docker/data:/data:rw -p 1016:80 -e ROLE=controller -e auth_key=4de3270bc3cc6e5f584c51a943fa558a9989be06e5ffd9af665fa43a5fb1231d36cb0511492a4851 registry.docker-cn.com/csphere/csphere
