[![Build Status](https://littlecoding.visualstudio.com/Open-Project/_apis/build/status/kunduso.app-one?branchName=scafolding)](https://littlecoding.visualstudio.com/Open-Project/_build/latest?definitionId=23&branchName=scafolding)
![Image](https://skdevops.files.wordpress.com/2022/03/62.image-1.png)
## Motivation
When it comes to identifying a process to deliver continuous value to customers, CI-CD is the defacto standard. And container technology enables that by encapsulating an application and its dependencies into a package that can be hosted and scaled independently of other applications. So DevOps engineers and application developers merged these ideas to forge a concept to create a CI-CD process to deploy containers.<br />
<br />At a high level, a typical CI-CD cycle involving containers comprises the following steps:
<br />**Step 1:** create the application code (or an executable depending on the technology) that will be hosted in a container by a specific cloud provider.
<br />**Step 2:** create and tag a docker image that contains the application (or executable) and all dependencies.
<br />**Step 3:** upload the docker image into an image repository, and
<br />**Step 4:** create a container out of the image that is stored in the image repository
<br />
<br />In this GitHub repository you will find all the information required to create your own CI-CD process using Azure DevOps to push a docker image into an Amazon ECR repository.

## Prerequisites
There are a couple of pre-requisites to this process - an IAM user with permission to push images to the Amazon ECR image repository and the image repository to host the image.
## Usage
Ensure that the IAM user whose credentials are being used in this configuration has permission to create and manage all the resources that are included in this repository. I have the policy file in the location `\iam-policy\iam-policy.json` that can be associated with the IAM user. Please update the `$(aws_account_number)` in the policy file before creating an IAM policy.
<br />Create an Azure DevOps Library variable group and store `App-One.AccessKey`, `App-One.SecretKey`, and `aws_account_number` securely. To read how to do that, refer to my note - [Manage secure variables with Azure DevOps Library and Azure Pipelines](http://skundunotes.com/2022/03/30/manage-secure-variables-with-azure-devops-library-and-azure-pipelines/).
<br /><br />For more details, refer to my note: [Push Docker images to Amazon ECR using Azure Pipelines and AWS Tools for PowerShell.](https://skundunotes.com/2022/03/30/push-docker-images-to-amazon-ecr-using-yaml-based-azure-pipelines/)
<br /><br />Click on the build badge `Azure Pipelines` at the top to navigate to the Azure DevOps build log.