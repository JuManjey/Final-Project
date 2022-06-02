pipeline {
  agent any
  stages {
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

  }
}