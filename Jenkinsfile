// A Declarative Pipeline is defined within a 'pipeline' block.
pipeline {
  agent {
    label ""
  }
  
  environment {
    FOO = "BAR"
  }
  
  stages {
    // At least one stage is required.
    stage("first stage") {
      // Every stage must have a steps block containing at least one step.
      steps {
          echo hi
        }
      }    
    stage('second stage') {
      steps {
        echo $FOO
      }
    }
    stage('third stage') {
      steps {
        parallel(one: {
                  echo "I'm on the first branch!"
                 },
                 two: {
                   echo "I'm on the second branch!"
                 },
                 three: {
                   echo "I'm on the third branch!"
                   echo "But you probably guessed that already."
                 })
      }
    }
  }
  
  post {
    // Always runs. And it runs before any of the other post conditions.
    always {
      // Let's wipe out the workspace before we finish!
      deleteDir()
    }
   }
}
