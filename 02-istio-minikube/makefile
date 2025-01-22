mk-start:
	minikube start --cpus 3 --memory 4096

istio-install:
	istioctl install

service-apply:
	kubectl apply -f ./kubernetes-manifests.yaml

service-delete:
	kubectl delete -f ./kubernetes-manifests.yaml


