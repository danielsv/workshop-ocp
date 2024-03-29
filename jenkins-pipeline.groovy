node('maven') {
    stage('build') {
        echo 'building app :)'
        openshiftBuild(buildConfig: 'workshop-ocp3', showBuildLogs: 'true')
    }
    stage('verify') {
        echo 'dummy verification....'
    }
    stage('deploy') {
        input 'Manual Approval'
        openshiftDeploy(deploymentConfig: 'workshop-ocp3')
    }
    stage('promoting to QA') {
       echo 'fake stage...'
       sleep 5 
    }
}
