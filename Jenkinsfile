pipeline {
  agent any
  stages {
    stage('start') {
      parallel {
        stage('start') {
          agent any
          steps {
          }
        }
        stage('place and dir') {
          steps {
            dir(path: '/home/') {
              zip(archive: true, file: 'SomeFile', zipFile: 'SomeZip')
            }

          }
        }

      }
    }

  }
}