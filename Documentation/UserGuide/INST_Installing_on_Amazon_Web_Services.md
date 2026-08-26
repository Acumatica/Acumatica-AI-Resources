# Acumatica ERP Installation in a Data Center: Installing Acumatica ERP on Amazon Web Services {#_1c0966b0-255d-4f7d-97c7-18436dd288f3 .concept}

You can install Acumatica ERP on Amazon Web Services \(AWS\). The Amazon Elastic Compute Cloud \(Amazon EC2\) provides the web server to host the Acumatica ERP application, while the Amazon Relational Database Service \(Amazon RDS\) provides the storage for the database. This topic includes recommendations for configuring the EC2 and RDS instances, as well as details about deploying Acumatica ERP on AWS.

## Prerequisite Tasks { .section}

Before you start installing Acumatica ERP on AWS, make sure that you have completed the following tasks:

-   Signing up for AWS account
-   Creating a key pair for secure access to your EC2 instances
-   Creating a security group that defines the rules for network access to your EC2 instance, based on which it can connect to your RDS instance

## Installation of Acumatica ERP on AWS { .section}

The process of installing Acumatica ERP on AWS generally involves the following steps:

1.  Launching an Amazon EC2 instance. During the launch of an Amazon EC2 instance, you select the instance type based on the performance requirements of the Acumatica ERP. This selection determines the processing power, memory, and network performance of the instance. Additionally, you configure the EC2 instance with the appropriate network settings, such as assigning it to a specific virtual private cloud \(VPC\) and setting up security groups. You also configure storage options, including the type and size of storage volumes, to ensure optimal performance and data persistence for the Acumatica ERP. For details, see [Acumatica ERP Installation in a Data Center: To Launch an Amazon EC2 Instance](INST_Installing_Launch_Amazon_Instance_Activity.md).
2.  Creating an Amazon RDS database instance. During the creation of an Amazon RDS database instance, you select a database engine that is compatible with the Acumatica ERP to ensure proper functionality. You should determine the instance size based on performance needs and reserve sufficient storage capacity to accommodate the database. Additionally, you configure security settings to ensure secure access and protection of the database. For details, see [Acumatica ERP Installation in a Data Center: To Create a Database Instance on Amazon RDS](INST_Installing_Create_Database_on_Amazon_RDS_Activity.md).
3.  Installing the Acumatica ERP Configuration wizard and deploying an Acumatica ERP application instance. After setting up the EC2 and RDS instances, you install the Acumatica ERP Configuration wizard. This tool is used for the deployment of the Acumatica ERP instance and guides you through the configuration process. For more information, see [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Configuration Wizard](INST_Installing_Configuration_Wizard_Activity.md). Once the Acumatica ERP Configuration wizard is installed, you can deploy an Acumatica ERP instance. During this deployment, the Acumatica ERP is connected to the Amazon RDS database, ensuring that all application data is securely stored within the RDS environment. For more information, see [Acumatica ERP Installation in a Data Center: To Install Acumatica ERP on Amazon EC2](INST_Installing_Deploy_Instance_on_Amazon.md).

**Parent topic:**[Installing Acumatica ERP in a Data Center](../UserGuide/INST_Installing_in_Data_Center_Mapref.md)

