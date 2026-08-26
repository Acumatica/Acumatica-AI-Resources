# Acumatica ERP Installation in a Data Center: General Information {#_b9ad5f73-08c1-4e7f-a957-45e2c3b0232b .concept}

You can install Acumatica ERP in a data center where the system and the associated databases are hosted by the provider. This approach ensures enhanced scalability, security, and performance in a stable environment.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with the process of installing Acumatica ERP in a data center
-   Launch an EC2 instance on Amazon Web Services \(AWS\) to host Acumatica ERP
-   Create an Amazon Relational Database Service \(Amazon RDS\) instance on AWS to host the Acumatica ERP database
-   Install Acumatica ERP on AWS and deploy an instance

## Applicable Scenarios { .section}

You may need to learn how to install Acumatica ERP in a data center in scenarios that include the following:

-   You are an implementation consultant who needs to install Acumatica ERP in a data center.
-   You are an implementation consultant who needs to install Acumatica ERP on AWS with an independent database server.

## Installing Acumatica ERP in a Data Center { .section}

You can install Acumatica ERP in a data center by using hosting or cloud service providers to ensure that your data is securely stored in persistent and durable storage in the cloud. The installation process depends on the service provider you choose and can be one of the following:

-   For deploying Acumatica ERP on a web service that provides an operating system with Microsoft SQL Server, the installation process typically involves the steps described in [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Configuration Wizard](INST_Installing_Configuration_Wizard_Activity.md).
-   For deploying Acumatica ERP as a cloud service on Windows Azure, you need to use Azure Cloud Services. The installation process typically involves creating a Windows virtual machine in the Azure portal. After setting up the virtual machine, you need to create an Acumatica ERP Service package and deploy it as described in the Windows Azure deployment guide.
-   For deploying Acumatica ERP on AWS, you need to launch an Amazon EC2 instance to host the Acumatica ERP. Additionally, you need to create an Amazon RDS database instance to manage the data. After setting up these instances, you can deploy Acumatica ERP by using an Acumatica ERP installation package, which you can download from the [Acumatica Community](https://community.acumatica.com/) website. For details, see [Acumatica ERP Installation in a Data Center: Installing Acumatica ERP on Amazon Web Services](INST_Installing_on_Amazon_Web_Services.md).

**Parent topic:**[Installing Acumatica ERP in a Data Center](../UserGuide/INST_Installing_in_Data_Center_Mapref.md)

