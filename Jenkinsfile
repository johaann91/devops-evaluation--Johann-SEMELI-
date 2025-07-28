pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/ton-utilisateur/ton-depot.git'
      }
    }
    stage('SonarQube Analysis') {
      steps {
        withSonarQubeEnv('SonarQube') {
          sh 'sonar-scanner'
        }
      }
    }
    stage('Ansible Deployment') {
      steps {
        sh '''
          docker build -t ansible-target .
          docker run -d -p 2222:22 --name target ansible-target
          sleep 5
          ansible-playbook -i inventory.ini playbook.yml
        '''
      }
    }
    stage('Vérification') {
      steps {
        sh 'curl http://localhost:2222'
      }
    }
    stage('Nettoyage') {
      steps {
        sh 'docker rm -f target || true'
      }
    }
  }
}
