docker pull  registry.docker-cn.com/csphere/csphere
docker run -d --restart=always --name=csphere-controller -v /home/billwang/docker/data:/data:rw -p 1016:80 -e ROLE=controller -e auth_key=4de3270bc3cc6e5f584c51a943fa558a9989be06e5ffd9af665fa43a5fb1231d36cb0511492a4851 registry.docker-cn.com/csphere/csphere

docker run -d --restart=always --name=csphere-agent -e ROLE=agent \
    -e CONTROLLER_ADDR=10.0.2.15:1016 \
    -e AUTH_KEY=4de3270bc3cc6e5f584c51a943fa558a9989be06e5ffd9af665fa43a5fb1231d36cb0511492a4851 \
    -v /home/billwang/docker/data:/data:rw \
    -v /proc:/rootfs/proc:ro \
    -v /sys:/rootfs/sys:ro \
    -v /etc:/rootfs/etc:rw \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -l CSPHERE_ROLE=agent \
    --net=host 10.0.2.15:5000/csphere/csphere
