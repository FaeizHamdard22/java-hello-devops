```markdown
# Java Hello DevOps Project

This project demonstrates a simple Java application built and deployed using modern DevOps tools and practices, including Jenkins, Ansible, AWS, Git, and Docker Hub.

---

## Project Overview

The project is a basic Java "Hello World" application.  
The main goal is to automate the building, testing, containerizing, and deployment of the app using CI/CD pipelines.

---

## Tools Used

- **Git**: Source code version control, hosting the code on GitHub.  
- **Jenkins**: CI/CD automation server to build, test, and deploy the app automatically on each code change.  
- **Maven**: Java build tool used to compile and package the application.  
- **Docker**: Containerizing the Java application for consistent deployment.  
- **Docker Hub**: Hosting Docker images to be pulled during deployment.  
- **Ansible**: Automating deployment steps on remote servers (e.g., AWS EC2 instances).  
- **AWS EC2**: Hosting the deployed application on cloud virtual machines.

---

## How It Works

1. **Code is pushed to GitHub** repository.

2. **Jenkins Pipeline** is triggered automatically:
   - Jenkins clones the GitHub repo.
   - Runs Maven commands to build and test the Java app (`mvn clean package` and `mvn test`).
   - Builds a Docker image containing the Java app.
   - Pushes the Docker image to Docker Hub.

3. **Ansible Playbook** runs from Jenkins:
   - Connects to AWS EC2 instances.
   - Pulls the latest Docker image from Docker Hub.
   - Stops any running containers of the app.
   - Starts new containers with the updated app.

---

## How to Use

### Prerequisites

- AWS account and EC2 instance(s) running Linux  
- Jenkins installed and configured with Git, Maven, Docker, and Ansible plugins  
- Docker Hub account with credentials saved in Jenkins  
- SSH access configured for Ansible to manage EC2 servers  

### Steps

- Push your Java code changes to GitHub.  
- Jenkins pipeline automatically builds, tests, and pushes Docker images.  
- Ansible deploys the updated Docker container to the AWS EC2 server.

---

## Author

- Faeiz Hamdard  
- GitHub: [https://github.com/FaeizHamdard22](https://github.com/FaeizHamdard22)

---

If you want help with setup or have questions, feel free to open an issue or contact me.
