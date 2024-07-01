IMAGE=quay.io/kairos/ubuntu:24.04-standard-amd64-generic-v3.1.0-rc1-k3sv1.30.1-k3s1
docker run -v "$PWD"/cloud-init.yaml:/config.yaml \
             -v /var/run/docker.sock:/var/run/docker.sock \
             -v "$PWD"/build:/tmp/auroraboot \
             --rm -ti quay.io/kairos/auroraboot \
             --set container_image=docker://${IMAGE} \
             --set "disable_http_server=true" \
             --set "disable_netboot=true" \
             --cloud-config /config.yaml \
             --set "state_dir=/tmp/auroraboot" \
             --debug
