pipeline {
    agent any
    
    // tools {
    //     maven 'Maven 3.6.3' // Nakonfigurujte v Jenkins > Global Tool Configuration
    //     jdk 'JDK 1.8'       // Nakonfigurujte v Jenkins > Global Tool Configuration
    // }
    // Poznámka: ak nemáte nakonfigurované tools v Jenkins, Maven a JDK musia byť v PATH
    
    triggers {
        // Kontrolovať Git repozitár každých 5 minút
        pollSCM('H/5 * * * *')
        // Alebo použite GitHub webhook pre okamžité spustenie (vyžaduje GitHub plugin a webhook nastavenie)
    }
    
    options {
        // Uchovávať len posledných 10 buildov
        buildDiscarder(logRotator(numToKeepStr: '10'))
        
        // Timeout pre celý build
        timeout(time: 30, unit: 'MINUTES')
        
        // Povoliť concurrent buildy
        disableConcurrentBuilds()
    }
    
    environment {
        // Maven nastavenia
        MAVEN_OPTS = '-Xmx1024m -XX:MaxPermSize=512m'
        
        // Encoding
        JAVA_TOOL_OPTIONS = '-Dfile.encoding=UTF-8'
    }
    
    stages {
        stage('Checkout') {
            steps {
                echo 'Checkout kódu z repozitára...'
                checkout scm
            }
        }
        
        stage('Clean') {
            steps {
                echo 'Čistenie predchádzajúcich buildov...'
                bat 'mvn clean'
            }
        }
        
        stage('Generate Sources') {
            steps {
                echo 'Generovanie DAO tried pomocou Torque...'
                bat 'mvn generate-sources'
            }
        }
        
        stage('Compile') {
            steps {
                echo 'Kompilácia projektu...'
                bat 'mvn compile'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Spúšťanie testov...'
                bat 'mvn test'
            }
            post {
                always {
                    // Publikovanie výsledkov testov (ak existujú)
                    junit allowEmptyResults: true, testResults: '**/target/surefire-reports/*.xml'
                }
            }
        }
        
        stage('Package') {
            steps {
                echo 'Vytváranie JAR súborov...'
                bat 'mvn package -DskipTests'
            }
        }
        
        stage('Archive Artifacts') {
            steps {
                echo 'Archivovanie artefaktov...'
                archiveArtifacts artifacts: 'target/*.jar', 
                                 fingerprint: true,
                                 allowEmptyArchive: false
            }
        }
    }
    
    post {
        success {
            echo 'Build úspešne dokončený!'
            // Poslať email notifikáciu (ak je nakonfigurované)
            // emailext body: 'Build úspešne dokončený',
            //          subject: "Jenkins Build ${env.JOB_NAME} - ${env.BUILD_NUMBER} - SUCCESS",
            //          to: 'team@example.com'
        }
        
        failure {
            echo 'Build zlyhal!'
            // Poslať email notifikáciu (ak je nakonfigurované)
            // emailext body: 'Build zlyhal',
            //          subject: "Jenkins Build ${env.JOB_NAME} - ${env.BUILD_NUMBER} - FAILED",
            //          to: 'team@example.com'
        }
        
        always {
            echo 'Čistenie workspace...'
            // cleanWs() // Odkomentovať ak chcete čistiť workspace po builde
        }
    }
}
