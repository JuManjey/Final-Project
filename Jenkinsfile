pipeline {
  agent any
  stages {
    stage('check updates') {
      agent any
      steps {
        git(url: 'http://corpserver.tk/home/Final-Project', branch: 'main')
      }
    }

  }
}