#docker service create \
#  --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
#  --mount type=bind,src=/etc/jupyterhub,dst=/srv/jupyterhub \
#  --mount src=nfsvolume,dst=/var/nfs \
#  --name jupyterhubserver \
#  --network jupyterhub \
#  --constraint 'node.role == manager' \
#  --detach=true \
#  yourusername/jupyterhub-docker:latest


docker service create \
  --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
  --mount type=bind,src=/home/ubuntu/jupyterhub/deploy-jupyterhub-dockerswarm,dst=/srv/jupyterhub \
  --name jupyterhubserver \
  --network jupyterhub \
  --constraint 'node.role == manager' \
  --publish 8000 \
  nitanka/jupyterhub-docker:latest
