// A Declarative Pipeline is defined within a 'pipeline' block.
pipeline {
    // the agent that the tasks will execute on
    // set by { label = "name" } or any 
  agent any
 
  // set an environment variable
  environment {
    FOO = "BAR"
  }
 
  // the pipeline consists of one or more stages
  stages {
    stage("Stage 1") {
      // Every stage must have a steps block containing at least one step.
      steps {
          echo "Step 1"
        }
      }    
    
    stage("State 2") {
      steps {
        // use the evironment variable defined above
        echo "$FOO"
      }
    }

    stage("Stage 3") {
      steps {
        // steps can have actions that are run in parallel
        parallel(
            one: {
                  echo "Parallel 1"
                 },
                 
            two: {
                   echo "Parallel 2"
                 },
            three: {
                   echo "Parallel 3"
                 })
      }
    }
  }
  
  post {
    // Always runs and runs before any of the other post conditions
    always {
        echo "Cleaning up..."
    }
   }
}
