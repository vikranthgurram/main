pipeline {
    agent any
    parameters{
        string(name:'Env',defaultValue:'Test',description:'version to deploy')
        booleanparam(name:'executeTests',defaultValue:true,description:'decided to run')
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
               when{
                   expression{
                       params.executeTests ==true
                   }
               } 
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
