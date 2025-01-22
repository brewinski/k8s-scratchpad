mk-start:
	minikube start --cpus 5 --memory 7000 

mk-stop:
	minikube stop

istio-install:
	istioctl install

service-apply:
	kubectl apply -f ./kubernetes-manifests.yaml

service-delete:
	kubectl delete -f ./kubernetes-manifests.yaml

istio-adons:
	kubectl apply -f ../resources/istio-1.24.2/samples/addons/
