pipeline {
    agent any
    parameters{
        string(name:'Env',defaultValue:'Test',description:'version to deploy')
    }
        stages {
            stage('Compile'){
               steps{
                   script{
                       echo'Compile the code'
                   }
               }
           }
           stage('Unittest'){
               steps{
                   script{
                       echo'Testing the code in ${params:Env} env'
                   }
               }
           }
           
           stage('Package'){
               steps{
                   script{
                       echo'Package the code'
                   }
               }
           }
           
           
       }
}
