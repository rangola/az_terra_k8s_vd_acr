# Automated Provisioning of Microsoft Azure Resources (Azure Kubernetes Service Cluster, Azure Virtual Desktop, Azure Container Registry, and Full Network Infrastructure) using Terraform Infrastructure as Code

Automated provisioning of Azure resources for a modern application stack, including Kubernetes cluster, virtual desktop, container registry, and network infrastructure, using Terraform IaC.

## Description

This project provides an infrastructure as code solution for deploying a modern application stack on Azure. It includes the following resources:

- **Azure Kubernetes Cluster (AKS):** A managed Kubernetes service for running containerized applications.

- **Azure Virtual Desktop (AVD):** A desktop and application virtualization service that runs on Azure.

- **Azure Container Registry (ACR):** A fully-managed private Docker registry that supports Docker images and Helm charts.

- **Network Infrastructure:** A virtual network with subnets and security groups for the AKS cluster and AVD.

## Prerequisites

- An Azure account with sufficient permissions to create the necessary resources.

- Terraform installed on your local machine.

- Azure CLI installed on your local machine.

## Getting Started

1. Clone the repository.

2. In the terminal, navigate to the root directory of the project.

3. Run `az login` to authenticate with Azure.

4. Run `terraform init` to initialize the Terraform configuration.

5. Run `terraform plan` to preview the changes to be made.

6. Run `terraform apply` to provision the resources.

## Usage

This project can be extended to include additional resources or customize existing ones. The following files can be modified to achieve this:

- `network/firewall/main.tf`: Defines the network and firewall.

- `virtual_network/main.tf`: Defines the virtual network and subnets.

- `aks/main.tf`: Defines the AKS cluster.

- `avd/main.tf`: Defines the AVD.

- `acr/main.tf`: Defines the ACR.

## Authors

- Goran

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.
