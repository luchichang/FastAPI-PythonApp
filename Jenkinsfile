pipeline{
  
  // run on any agent
  agent any

  // stages
  stages{
    stage('code pull'){      
      steps{
         git branch: 'main', url: 'https://github.com/luchichang/FastAPI-PythonApp.git'
      }
      
    }
    stage('build the docker'){
      steps{ 
         sh 'docker build -t py-image /var/lib/jenkins/workspace/PythonCICDPipeline/'
         sh 'docker tag py-image:latest dinesht0006/python-app:latest'
         sh 'docker tag py-image:latest dinesht0006/python-app:${BUILD_NUMBER}'
      }
    }
    stage('push the image'){
      steps{
        sh 'docker  push dinesht0006/python-app:latest'
        sh 'docker push dinesht0006/python-app:${BUILD_NUMBER}'
      }
    }
  }
}
