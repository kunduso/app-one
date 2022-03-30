[![Build Status](https://littlecoding.visualstudio.com/Open-Project/_apis/build/status/kunduso.app-one?branchName=scafolding)](https://littlecoding.visualstudio.com/Open-Project/_build/latest?definitionId=23&branchName=scafolding)
![Image](https://skdevops.files.wordpress.com/2022/03/62.image-1.png)
## Motivation
When it comes to identifying a process to deliver continuous value to customers, CI-CD is the defacto standard. And container technology enables that by encapsulating an application and its dependencies into a package that can be hosted and scaled independently of other applications. So DevOps engineers and application developers merged these ideas to forge a concept to create a CI-CD process to deploy containers.<br />
<br />At a high level, a typical CI-CD cycle involving containers comprises the following steps:
<br />**Step 1:** create the application code (or an executable depending on the technology) that will be hosted in a container by a specific cloud provider.
<br />**Step 2:** create and tag a docker image that contains the application (or executable) and all dependencies.
<br />**Step 3:** upload the docker image into an image repository, and
<br />**Step 4:** create a container out of the image that is stored in the image repository
## Prerequisites
There are a couple of pre-requisites to this process - an IAM user with permission to push images to the Amazon ECR image repository and the image repository to host the image.
## Usage
Ensure that the IAM user whose credentials are being used in this configuration has permission to create and manage all the resources that are included in this repository. For more details, refer to my note: [Push Docker images to Amazon ECR using Azure Pipelines and AWS Tools for PowerShell.](https://skundunotes.com/2022/03/30/push-docker-images-to-amazon-ecr-using-yaml-based-azure-pipelines/)