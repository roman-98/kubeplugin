# Інструкція з використання скрипта kubectl-plugin

## Встановлення

### Клонування репозиторію
```sh
git clone https://github.com/roman-98/scripts.git
cd kubeplugin/scripts
```

### 1. надання файлу прав на виконання

```sh
sudo chmod +x kubectl-plugin.sh
```

### 2. переміщення файлу в директорію /usr/local/bin

```sh
sudo mv kubectl-plugin.sh /usr/local/bin
```

### 3. виконання файлу як плагіну kubectl

```sh
k plugin.sh kube-system pod get
```

```sh
(⎈|k3d-kube:N/A)➜  kubeplugin git:(main) k plugin.sh kube-system pod get
pod, kube-system, coredns-6799fbcd5-xfgbn, 1/1, Running
pod, kube-system, helm-install-traefik-crd-bs5pn, 0/1, Completed
pod, kube-system, helm-install-traefik-ll82w, 0/1, Completed
pod, kube-system, local-path-provisioner-6f5d79df6-2s28l, 1/1, Running
pod, kube-system, metrics-server-54fd9b65b-lmtfl, 1/1, Running
pod, kube-system, svclb-traefik-3466cdeb-xkmhc, 2/2, Running
pod, kube-system, traefik-7d5f6474df-gdwtc, 1/1, Running
```