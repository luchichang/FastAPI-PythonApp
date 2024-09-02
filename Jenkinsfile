pipeline{
  
  // run on any agent
  agent any

  // stages
  stages{
    stage('code pull'){      
      when{
        branch 'main'
      }
      git branch: 'main', url: 'https://github.com/luchichang/FastAPI-PythonApp.git'
    }
    stage('build the docker'){
      when{
        branch 'main'
      }
      steps{ 
         sh 'docker build -t py-image /var/lib/jenkins/workspace/PythonCICDPipeline/'
         sh 'docker tag py-image:latest dinesht0006/python-app:latest'
         sh 'docker tag py-image:latest dinesht0006/python-app:${BUILD_NUMBER}'
      }
    }
    stage('push the image){
      when{
        branch 'main'
      }
      steps{
        sh 'docker  push dinesht0006/python-app:latest'
        sh 'docker push dinesht0006/python-app:${BUILD_NUMBER}'
      }
    }
  }
}
