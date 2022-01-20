## Building container image from Dockerfile

```
docker build -t jupyter-scipy-custom:latest --file Dockerfile.mvp1 .

docker images
REPOSITORY                                                         TAG       IMAGE ID       CREATED              SIZE
jupyter-scipy-custom                                               latest    bf09fa9b04b4   About a minute ago   5.58GB
public.ecr.aws/j1r0q0g6/notebooks/notebook-servers/jupyter-scipy   v1.4      93955096f3da   5 weeks ago          1.78GB

```

local test
```
docker run -p 8888:8888 jupyter-scipy-custom:latest

open http://localhost:8888/


```

```
docker tag jupyter-scipy-custom <YOUR-DOCKER-HUB-ID>/jupyter-scipy-custom:latest

docker images
REPOSITORY                                                         TAG       IMAGE ID       CREATED         SIZE
jupyter-scipy-custom                                               latest    bf09fa9b04b4   5 minutes ago   5.58GB
<YOUR-DOCKER-HUB-ID>/jupyter-scipy-custom                                     latest    bf09fa9b04b4   5 minutes ago   5.58GB
public.ecr.aws/j1r0q0g6/notebooks/notebook-servers/jupyter-scipy   v1.4      93955096f3da   5 weeks ago     1.78GB

```

```
docker login (https://hub.docker.com/)

```

```
docker push <YOUR-DOCKER-HUB-ID>/jupyter-scipy-custom:latest
```


## Build image from container

```
docker run public.ecr.aws/j1r0q0g6/notebooks/notebook-servers/jupyter-scipy:v1.4

docker ps

docker exec -it <CONTAINER_ID> sh

$ pip install ...
$ exit

docker commit <CONTAINER_ID> 

docker tag <CONTAINER_ID>  jupyter-scipy-from-container:latest

docker save jupyter-scipy-from-container:latest -o jupyter-scipy-from-container__latest.tar


```

## testing graphviz 

```

import graphviz
dot = graphviz.Digraph('round-table', comment='The Round Table')
dot
dot.render(directory='doctest-output').replace('\\', '/')

```
https://graphviz.readthedocs.io/en/stable/manual.html

## Reference
https://github.com/myminseok/kubeflow-main/blob/main/updating-jupyter-notebook-mages.md



