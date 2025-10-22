// This is the complete recipe for the Jenkins Chef!

pipeline {
    // 1. Where to run the job (use any available computer/server)
    agent any

    // 2. Define the major steps (stages) of our CI/CD process
    stages {
        // --- Stage 1: Build (Make the Pizza/Create the Docker Image) ---
        stage('Build') {
            steps {
                echo 'Starting Build Stage: Creating Docker Image...'
                // Command to tell Docker to build the image using the 'Dockerfile'
                // -t tags the image as 'my-day2-app'
                bat 'docker build -t my-day2-app:latest .'
            }
        }

        // --- Stage 2: Test (Quick Quality Check/Taste Test) ---
        stage('Test') {
            steps {
                echo 'Starting Test Stage: Performing quick validation...'
                // For this simple project, we'll just print a message,
                // but a real project would run actual code tests here.
                bat 'echo "Simulated tests passed successfully!"'
            }
        }

        // --- Stage 3: Deploy (Deliver the Pizza/Run the Container) ---
        stage('Deploy') {
            steps {
                echo 'Starting Deploy Stage: Running the Docker Container...'

                // Stop and remove any old running container with the same name
                // '|| true' means ignore the error if it doesn't exist yet
                bat 'docker rm -f day2-web-app || true'

                // Run the new container, exposing it on port 8080
                // -d runs it in the background
                // -p 8080:80 maps your computer's port 8080 to the container's port 80
                bat 'docker run -d --name day2-web-app -p 8081:80 my-day2-app:latest'

                echo 'Deployment successful! Check http://localhost:8080'
            }
        }
    }
}