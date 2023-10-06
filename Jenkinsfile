
 pipeline {
    agent none

    stages {
        stage('Compile') {
            agent any
            steps {
                               
                sh "mvn compile"    
                           
            }           
        }
        stage('UnitTest') {
            agent {label 'Node2AWS'}
            steps {                
                sh "mvn test"
            }
            post{
                always{
                    junit 'target/surefire-reports/*.xml'
                }
            }           
        }
        stage('package') {
            agent any
            steps {
            // script{
                 // echo "Packaging the code on new slave"
             // sshagent(['Node3_key']) { 
                       sh "mvn package"
                   // sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.90.129 'bash ~/server-script.sh'"
                    }
                }
              
           //  }             
       // }
 
        
    }  
}
