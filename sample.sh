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

# レプリカセットの反映、レプリカセットの作成後も有効
kubectl apply -f replicaset.yaml

# レプリカセットのスケール
kubectl scale rs/nginx --replicas=4

# レプリカセットの確認
kubectl get replicaset # or rs
kubectl get pod
kubectl get rs nginx-75dd49b95c -o yaml

# レプリカセットが理想状態になるサンプル
watch kubectl get pod
kubectl delete pod nginx-4f5z9 # 実行タイミングで新規のpodが作成される

# デプロイの実行
# deployment.yamlの内容を変更して再実行すると反映される
kubectl apply -f deployment.yaml

# デプロイの履歴
kubectl rollout history deploy

# ロールバックする
kubectl rollout undo -f deployment.yaml --to-revision=3

# デプロイの削除
kubectl delete -f deployment.yaml
