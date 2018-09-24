```
docker run -v {KUBECONFIG_FILE_PATH}:/root/app/ -e KUBECONFIG=/root/app/{KUBECONFIG_FILE_NAME} k8s-informer:latest -it
```