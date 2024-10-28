# K8s POC

## Lancement

Requis :

- minikube
- kubectl

Pour lancer le site il faut executer le fichier start.sh.

Modifier le fichier /etc/hosts en y mettant l'ip du cluster minikube comme ci dessous :

`192.168.49.2    apachetest`

Puis aller sur le [site](http://apachetest)

## Pour arrêter

```bash
minikube delete
```
