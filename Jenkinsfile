pipeline {
  agent any
  stages {
    stage('Unit Test') {
      steps {
        bat 'mvn clean test'
      }
    }
    stage('Deploy CloudHub') {
      environment {
        ANYPOINT_CREDENTIALS = credentials('anypoint.credentials')
      }
      steps {
        bat 'mvn deploy -P cloudhub -Dmule.version=4.2.1 -Danypoint.username=mdabrar1 -Danypoint.password=@burosE4'
      }
    }
  }
}
