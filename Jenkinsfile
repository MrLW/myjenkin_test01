pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 3000:3000'
        }
    }
    stages {       
        stage('prepare'){
            steps {
                def props = readJSON file: './package.json'
            }
        }

        stage('Build') {
            steps {
                sh "docker build -t jenkins-demo:${props.version} 172.16.12.171/myjenkins-demo/${props.version} ."
                sh "docker tag jenkins-demo:${props.version} 172.16.12.171/myjenkins-demo/${props.version}"
                sh "docker login -u ${test} -p ${Test123456} 172.16.12.171"
                sh "docker push 172.16.12.171/myjenkins-demo/${props.version}"
            }
        }
        stage('deploy') {
            steps {
                sh 'npm start'
            }
        }
    }
}
