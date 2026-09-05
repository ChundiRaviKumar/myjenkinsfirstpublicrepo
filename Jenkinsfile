// Jenkinsfile - Pipeline definition for Jenkins practice
// This file demonstrates a basic Jenkins declarative pipeline

pipeline {
    // Run on any available agent/node
    agent any

    // Define environment variables
    environment {
        PROJECT_NAME = 'myjenkinsfirstpublicrepo'
        BUILD_VERSION = '1.0.0'
    }

    // Pipeline stages
    stages {
        // Stage 1: Checkout code from GitHub
        stage('Checkout') {
            steps {
                echo "===== Checkout Stage ====="
                echo "Cloning repository from GitHub..."
                // Git checkout is automatic in Jenkins, but shown here for clarity
                echo "Repository: ${PROJECT_NAME}"
            }
        }

        // Stage 2: Build
        stage('Build') {
            steps {
                echo "===== Build Stage ====="
                echo "Building project version: ${BUILD_VERSION}"
                // Execute build script
                sh 'bash build.sh'
            }
        }

        // Stage 3: Test
        stage('Test') {
            steps {
                echo "===== Test Stage ====="
                echo "Running tests..."
                // Execute test script
                sh 'bash test.sh'
            }
        }

        // Stage 4: Deploy (placeholder for practice)
        stage('Deploy') {
            steps {
                echo "===== Deploy Stage ====="
                echo "Deployment would happen here in production"
                echo "This is a practice repository for learning Jenkins"
            }
        }
    }

    // Post-build actions
    post {
        // Always runs
        always {
            echo "===== Build Completed ====="
            echo "Project: ${PROJECT_NAME}"
        }

        // Runs on success
        success {
            echo "Build was successful!"
        }

        // Runs on failure
        failure {
            echo "Build failed! Check logs for details."
        }
    }
}
