docker build -t jupyter-scipy-custom-docker:mvp1 --file Dockerfile.mvp1 .
docker tag jupyter-scipy-custom-docker:mvp1 platform-harbor.mvp.bsl.local/kubeflow/jupyter-scipy-custom-docker:mvp1
