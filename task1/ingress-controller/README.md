Для установки Ingress контроллера использовал Helm чарт - ingress-nginx/ingress-nginx

https://github.com/kubernetes/ingress-nginx/tree/main/charts/ingress-nginx

Установка:

helm upgrade --install --create-namespace -n ingress-nginx -f task1/ingress-controller/values.ingress-nginx.yaml ingress-nginx ingress-nginx/ingress-nginx