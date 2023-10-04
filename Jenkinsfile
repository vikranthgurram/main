pipeline {
    agent any
    parameters{
        string(name:'Env',defaultValue:'Test',description:'version to deploy')
        booleanParam(name:'executeTests',defaultValue:true,description:'decided to run')
        choice(name:'APPVERSION',choices:['1:1','2:1'])
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
                       echo'Package the code ${params.APPVERSION}'
                   }
               }
           }
           
           
       }
}
