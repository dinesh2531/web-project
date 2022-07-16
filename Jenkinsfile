node {  
    stage('checkout') { 
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'dinesh2531', url: 'https://github.com/dinesh2531/web-project.git']]])
    }
    stage('Build Maven') { 
        bat 'mvn clean install'
       // bat 'mvn package'
    }
    stage('Build Docker Image') { 
       
           bat 'docker build -t dinesh2531/mysamp:Snapshot.1.0.1 .'
       
    }
    stage('Docker Image run') { 
        
        //withCredentials([usernameColonPassword(credentialsId: 'registry_docker', variable: 'docker_user')]) {
            
       bat 'docker login -u dinesh2531 -p Dinesh@123'
       
       bat 'docker push dinesh2531/mysamp:Snapshot.1.0.1'
       
       bat 'docker images'
        
         
        
        bat 'docker run -p 8040:8080 dinesh2531/mysamp:Snapshot.1.0.1'
        
        bat 'docker ps -a'
//}

        
    }
}

