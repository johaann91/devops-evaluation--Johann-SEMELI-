# Évaluation DevOps – Johann SEMELI

## Objectif
Automatiser l'intégration et le déploiement d'une app web simple via Jenkins, SonarQube, Ansible, Docker et Kubernetes.

## Structure du projet
- `/jenkins` : Jenkinsfile + captures
- `/sonarqube` : config SonarQube
- `/ansible` : Dockerfile + playbook Ansible
- `/kubernetes` : fichiers YAML pour déploiement Nginx

## Commandes principales
```bash
ansible-playbook -i inventory.ini playbook.yml
kubectl apply -f nginx-deployment.yaml
```

## Prérequis
- Jenkins avec plugins Sonar
- SonarQube avec token
- Docker
- Ansible
- Cluster Kubernetes local (ex : Minikube)
