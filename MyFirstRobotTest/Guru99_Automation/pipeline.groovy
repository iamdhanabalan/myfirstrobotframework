node {
   stage('Checkout')
   {
        checkout([$class: 'GitSCM', branches: [[name: '*/UnderDev']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '20e87360-72a4-425b-b34c-0b5ebae90534', url: 'https://github.com/iamdhanabalan/myfirstrobotframework']]])
        echo 'Checked out'
    }
   stage('Run Tests')
   {
     /*   
      bat label: '', script: 'robot -v myconfig.yaml -d Results MyFirstRobotTest\\Guru99_Automation\\Guru99WebAutomation.robot && robotmetrics --inputpath ./Results/'
      */
      currentBuild.result = 'UNSTABLE'
      echo 'Demo worked'
   }
   stage('Generate Report')
   {
      /* step([
        $class : 'RobotPublisher',
        outputPath : 'MyFirstRobotTest/Guru99_Automation/Results',
        outputFileName : "*.xml",
        disableArchiveOutput : false,
        passThreshold : 100,
        unstableThreshold: 95.0,
        otherFiles : "*.png",
        ])
        */
   }
   stage('Clean WS')
   {
       cleanWs()
   }
}
