wget https://storage.googleapis.com/kubernetes-helm/helm-v2.10.0-linux-amd64.tar.gz 
tar -xvzf helm-v2.10.0-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm
helm init
kubectl delete deployment tiller-deploy --namespace=kube-system ; kubectl delete service tiller-deploy --namespace=kube-system ; rm -rf ~/.helm/
kubectl create -f helm.yaml
helm init --service-account helm
sleep 20
kubectl get po --namespace kube-system
