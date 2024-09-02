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
  }
}
