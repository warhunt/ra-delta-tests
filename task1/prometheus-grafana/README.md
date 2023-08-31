Для установки Prometheus + Grafana использовал Helm чарт - prometheus-community/kube-prometheus-stack

https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack

Установка:
helm upgrade --install --create-namespace -n monitoring -f task1/prometheus-grafana/values.monitoring.yaml prometheus prometheus-community/kube-prometheus-stack