export KUBECONFIG=/Users/omarelghiba/Desktop/Mlops-Platform/Django/.kube/kubeconfig.yaml

kubectl create secret generic django-web-env-prod  --from-env-file=web/.env.prod

docker buildx build --platform=linux/amd64 -t registry.digitalocean.com/cr-k8s/django-k8s-web:latest -f Dockerfile .

docker push registry.digitalocean.com/cr-k8s/django-k8s-web --all-tags

cr token

dop_v1_bbce46a74cde8cff8439324955001da44d2fc9aa1f02210182661c585fae5fc2



github action secret :

dop_v1_93f055bc4a4db6242f3f5967d57f2cae48f3c76337a721362922e4580c6af539




 1018  mv kubeconfig.yaml config
 1019  clear
 1020  cd ..
 1021  cd Mlops-Platform
 1022  docker iamges
 1023  docker images
 1024  docker images
 1025  docker login registry.digitalocean.com
 1026  ls
 1027  cd Django
 1028  cd web
 1029  clear
 1030  docker buildx build --platform=linux/amd64 -t registry.digitalocean.com/cr-k8s/django-k8s-web:latest -f Dockerfile .
 1031  docker buildx build --platform=linux/amd64 -t registry.digitalocean.com/cr-k8s/django-k8s-web:latest -f Dockerfile .
 1032  docker push registry.digitalocean.com/cr-k8s/django-k8s-web --all-tags\n
 1033  python -c 'from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())\n'


