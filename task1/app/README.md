Для установки приложения использовал Helm чарт - ingress-nginx/ingress-nginx

https://github.com/stefanprodan/podinfo/tree/master/charts/podinfo

Установка:

helm upgrade --install --create-namespace -n podinfo -f task1/app/values.podinfo.yaml podinfo podinfo/podinfo
