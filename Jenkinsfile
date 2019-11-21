pipeline {
  agent any
  stages {
    stage('Unit Test') {
      steps {
        bat 'mvn clean install'
      }
    }
    stage('Deploy CloudHub') {
      environment {
        ANYPOINT_CREDENTIALS = credentials('anypoint.credentials')
      }
      steps {
        bat 'mvn deploy -DmuleDeploy'
      }
    }
  }
}
