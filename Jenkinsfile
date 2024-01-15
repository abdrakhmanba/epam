pipeline {
  agent any
  stages {
    stage('Checkout Test') {
      steps {
        sh 'checkout -b test'
      }
    }

    stage('Build Application') {
      steps {
        sh 'sh scripts/script.sh'
      }
    }

    stage('Run Test') {
      steps {
        sh 'sh scripts/test.sh'
      }
    }

    stage('Build an docker image ') {
      steps {
        sh 'docker build -t mybuildimage  '
      }
    }

    stage('Docker Push') {
      steps {
        sh 'docker image push'
      }
    }

  }
}