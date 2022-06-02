pipeline {
  agent any
  stages {
    stage('start') {
      parallel {
        stage('start') {
          agent any
          steps {
            sh '''echo "---------------------Build Started----------------------"
cat <<EOF > index.html
<html>
<body bground=black>
<center>
<h2><font color=yellow>Hello From DevOps WebPage!</font></h2>
<font color=blue>www.adv-it.net</font>
</center>
</body>
</html>
EOF
echo "---------------------Build Finished----------------------"'''
          }
        }

        stage('create') {
          steps {
            dir(path: '/home/')
            prependToFile(file: 'SomeFile', content: 'he JSONPath Expression Tester allows developers to test and evaluate JSONPath, the XPath like syntax for JSON. Based on the popular JSON Formatter & Validator, the JSONPath Tester allows users to choose between PHP implementations of JSONPath created by Stefan Gössner and Flow Communications\' Stephen Frank.')
          }
        }

      }
    }

    stage('fin') {
      parallel {
        stage('fin') {
          steps {
            sh '''echo "---------------------Test Started----------------------"
result=`grep "Hello" index.html |wc -l`
echo $result
if  [ "$result" = "1" ]
then
 echo "Test Passed"
else
 echo "Test Failed"
 exit 1
fi
echo "---------------------Test Finished----------------------"'''
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