pipeline {
    agent any

    stages {
        stage('build htf image') {
            steps {
                echo "build htf image"
                sh 'docker build -t "clouden90/ubuntu20.04-gnu9.3-hpc-stack-htf-jenkins:test" -f "${WORKSPACE}/docker/recipe/Dockerfile.ubuntu20.04-gnu9.3-hpc-stack-htf-jenkins" "${WORKSPACE}"'
            }
        }
        
        stage('test ufs-wm build') {
            steps {
                echo "test ufs-wm build"
                sh 'docker run --user root --rm clouden90/ubuntu20.04-gnu9.3-hpc-stack-htf-jenkins:test /bin/bash -c "bash ./docker/recipe/run_toy.sh"'
            }
        }
        
    }
}
