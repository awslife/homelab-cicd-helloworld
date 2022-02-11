minikube start \
  --profile=$MINIKUBE_PROFILE \
  --vm=true \
  --driver=$KUBE_DRIVER \
  --kubernetes-version=$KUBE_VERSION \
  --extra-config=apiserver.oidc-groups-claim=groups \
  --extra-config=apiserver.oidc-issuer-url=$OIDC_ISSUER_URL \
  --extra-config=apiserver.oidc-username-claim=$OIDC_USERNAME_CLAIM \
  --extra-config=apiserver.oidc-client-id=$OIDC_CLIENT_ID

minikube addons disable storage-provisioner
minikube addons disable default-storageclass
minikube addons enable ingress
