pipeline {
  agent any
  stages {
    stage('Checkout Test') {
      steps {
        sh 'git checkout test'
      }
    }

    stage('Build Application') {
      steps {
        sh 'sh scripts/build.sh'
      }
    }

    stage('Run Test') {
      steps {
        sh 'sh scripts/test.sh'
      }
    }

    stage('Build an docker image ') {
      steps {
        sh 'docker build -t berikapps .'
      }
    }

    stage('Docker Push') {
      steps {
        sh 'docker tag berikapps abdrakhmanba/epam'
        sh 'docker push abdrakhmanba/epam'
      }
    }

  }
}