pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                
                dir ("docker-postgres") { 
                    //vérifier si containers existent
              //  sh docker ps -a|grep -E 'oadb|oahttp'

//arrêter les containers existants
               //   sh docker stop $(docker ps -a -q --filter 'name=oadb')
              //    sh docker rm $(docker ps -a -q --filter 'name=oadb')
             //   sh docker stop $(docker ps -a -q --filter'name=oahttp')
             //   sh docker rm $(docker ps -a -q --filter 'name=oahttp')

//supprimer les images docker associées (si nécessaire)
               // sh docker rmi $(docker images -q 'oadb')
               // sh docker rmi $(docker images -q 'oahttp')

                sh 'docker stop /oadb'
                sh 'docker rm /oadb'
                sh 'docker build --tag postgres .'
                sh 'docker run -d --network=oa-net --name oadb postgres'
                }
                
                sh '''if ! test -d OpenAGE; then
                   git clone git@github.com:rt-admin/OpenAGE.git
                fi'''
                sh 'git pull'
                sh 'cp config_file/build-OpenAGE.properties OpenAGE/'
                dir("OpenAGE") {
                    withAnt(installation: 'Ant:1.9.13', jdk: 'Java1.6') {
                        sh 'ant -Dbin-dist-folder=../../docker-tomcat/ build-webapp'
                    }
                }
                dir ("docker-tomcat") { 
                    sh 'docker stop /oahttp'
                    sh 'docker rm /oahttp'
                    sh 'docker build --tag tomcat .'
                    sh 'docker run -d -p 82:8080 -h oahttp --network=oa-net --name oahttp tomcat'
                }
            }
        }
        stage('Init') {
            steps {
                echo 'Initialisation'
            }
        }
        stage('build') {
            steps {
                echo 'Building application'
            }
        }
         stage('Tests') {
            steps {
                echo 'Testing application'
            }
        }
         stage('Deploy') {
            steps {
                echo 'Deploying application'
            }
        }
    }
}
