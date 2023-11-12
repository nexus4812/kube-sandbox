# ポッドの作成
kubectl create -f pod-test.yaml
kubectl run nginx --image=nginx

# ポットの状態を確認する
kubectl get pod
kubectl get pod nginx -o json

# ポッドの削除
kubectl delete pod nginx
kubectl delete -f pod-test.yaml

# namespaceの作成
kubectl apply -f namespace-test.yaml
kubectl create namespace test-with-cli
kubectl create namespace test-with-cli --dry-run=client -o yaml # yamlで出力

# namespaceの確認
kubectl get ns # or namespace

# namespaceの削除
kubectl delete -f namespace-test.yaml
kubectl delete namespace test-with-cli
