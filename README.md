# 🍕 Jenkins CI/CD Pipeline Project (Day 2 DevOps)

This project demonstrates a basic Continuous Integration/Continuous Deployment (CI/CD) pipeline using **Jenkins** and **Docker** to automatically build and deploy a simple NGINX web application on a Windows host.

## 🎯 Objective

To automate the process of building a Docker image and deploying it to a local environment every time code changes are pushed to this repository.

## 🛠️ Tools Used

* **Jenkins:** The CI/CD Automation Server (The 'Kitchen Boss').
* **Docker:** Used for packaging the application into a consistent, deployable container (The 'Delivery Van').
* **Git/GitHub:** Source Control Management (SCM) and the trigger for the pipeline.
* **Operating System:** Windows 10/11 with WSL 2 enabled for Docker Desktop.

---

## 🚀 Pipeline Flow (Jenkinsfile)

The Jenkins pipeline is defined in the `Jenkinsfile` and executes the following stages:

1.  **Build:** Creates a Docker image named `my-day2-app:latest` using the provided `Dockerfile`.
2.  **Test:** Runs a simple `echo` command for demonstration (in a real project, this would run unit/integration tests).
3.  **Deploy:**
    * Stops and removes any previous container named `day2-web-app`.
    * Launches the new Docker image on the host's **port 8081**.

---

## 📸 Proof of Execution

### 1. Successful Jenkins Build Log

This screenshot confirms the pipeline completed all stages successfully and shows the deployment URL is correctly set to 8081.



### 2. Deployed Application (Port 8081)

This image shows the application running live in the browser, confirming the successful deployment of the Docker container.



### 3. Jenkins Dashboard (Port 8080)

This image shows the Jenkins dashboard, which runs on a separate port (8080) to manage the pipeline itself.