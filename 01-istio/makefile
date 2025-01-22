create-cluster:
	kind create cluster --name istio-testing

get-cluster:
	kind get clusters

use-cluster:
	kubectl config use-context kind-istio-testing

install-istiocli:
	curl -L https://istio.io/downloadIstio | sh -

helm-istio:
	helm repo add istio https://istio-release.storage.googleapis.com/charts
	helm repo update
	helm install istio-base istio/base -n istio-system --set defaultRevision=default --create-namespace

helm-istiod:
	helm install istiod istio/istiod -n istio-system --wait

helm-istio-values: 
	helm show values istio/base 

istio-validate:
	helm ls -n istio-system

istiod-status:
	helm status istiod -n istio-system

istiod-kget:
	kubectl get deployments -n istio-system --output wide

istio-gateway:
	kubectl create namespace istio-ingress
	helm install istio-ingress istio/gateway -n istio-ingress --wait
