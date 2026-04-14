**Brain Tasks App Deployment Report**

**1. Project Overview**
This project demonstrates the deployment of a static web application using Docker, Kubernetes (EKS), and AWS CI/CD services.


**2. Technologies Used**
- Docker
- Kubernetes (EKS)
- AWS CodePipeline
- AWS CodeBuild
- AWS CloudWatch
- GitHub
  
**3. Application Setup**
The repository was cloned from GitHub. The application was identified as a static frontend located in the dist folder and served locally using a lightweight server.
<img width="794" height="276" alt="image" src="https://github.com/user-attachments/assets/a4bcb311-7227-4669-ab19-7135ad9508cc" />


**4. Dockerization**
The application was containerized using Nginx. The dist folder contents were copied into the container.
<img width="1212" height="72" alt="image" src="https://github.com/user-attachments/assets/d203893c-1bec-49f4-928e-eefd2846cea0" />
<img width="1906" height="1031" alt="image" src="https://github.com/user-attachments/assets/13d99923-7235-437c-9291-8d0f20e40a15" />

docker build -t brain-tasks-app .

docker run -p 3000:3000 brain-tasks-app

**5. Kubernetes Deployment**
Deployment and Service YAML files were created and applied using kubectl.
<img width="723" height="102" alt="image" src="https://github.com/user-attachments/assets/f823c2f3-c34e-4047-9f8d-31b4455947c7" />
<img width="1900" height="823" alt="image" src="https://github.com/user-attachments/assets/49ebb358-e40b-44cc-ab57-4431c38b1f9a" />


kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

**6. CI/CD Pipeline**
AWS CodePipeline was used to automate the process. CodeBuild handled both build and deployment using kubectl commands.
<img width="1862" height="801" alt="image" src="https://github.com/user-attachments/assets/e20c328f-b3da-4115-9145-d63add8108fe" />
<img width="1889" height="707" alt="image" src="https://github.com/user-attachments/assets/df4efb2e-99a8-4abc-bd02-428a98335761" />


**7. Monitoring**
Logs were monitored using AWS CloudWatch and kubectl logs for Kubernetes pods.
<img width="1915" height="596" alt="image" src="https://github.com/user-attachments/assets/cfc4af46-684e-431c-8729-cb8d2226812b" />
<img width="1863" height="807" alt="image" src="https://github.com/user-attachments/assets/22aae502-b68c-4f90-94ef-b818780d4119" />
<img width="630" height="117" alt="image" src="https://github.com/user-attachments/assets/665d9901-aadc-4894-bdb7-ff7f236d4fe0" />


**9. Conclusion**
The application was successfully deployed using Docker and Kubernetes with CI/CD automation and monitoring.
