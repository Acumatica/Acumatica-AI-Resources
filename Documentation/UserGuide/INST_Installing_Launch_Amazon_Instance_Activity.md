# Acumatica ERP Installation in a Data Center: To Launch an Amazon EC2 Instance {#_369e491c-d21c-4dcf-92be-6a6b038af5a3 .task}

The following activity will walk you through the process of launching an Amazon Elastic Compute Cloud \(Amazon EC2\) instance.

**Attention:** This activity walks you through the configuration of third-party software. Please note the following:

-   The vendor of the third-party software may change the user interface and settings. Therefore, the form elements and setting names that you see may differ from the ones described in the activity.
-   The activity will be updated to describe changes in the user interface and settings.

## Story { .section}

Suppose that you are the system administrator, and you need to launch an Amazon EC2 instance to host the Acumatica ERP application.

## Process Overview { .section}

In this activity, you will launch an Amazon EC2 instance.

## Step: Launching an Amazon EC2 Instance { .section}

To launch an Amazon EC2 instance, do the following:

1.  Sign in to the AWS Management Console, and open Amazon EC2.
2.  On the right side of the toolbar, select the region for your EC2 instance.

    **Important:** You must select the same region for your EC2 and RDS instances and for the key pair you use to sign in to your instances.

3.  On the EC2 dashboard, click **Launch Instance** to open the **Launch an Instance** page.
4.  In the **Name and Tags** section, specify the name to be used for the instance: `AcumaticaAWS`.
5.  In the **Application and OS Images \(Amazon Machine Image\)** section, select the following Amazon Machine Image \(AMI\): *Microsoft Windows Server 2022 Base*.

    **Tip:** To simplify the search for the required AMI, you can click the **Quick Start** tab in the **Application and OS Images \(Amazon Machine Image\)** section. Then you click the icon for the desired operating system. In the **Amazon Machine Image \(AMI\)** box, you will see the most recent operating system available for launching an EC2 instance.

6.  In the **Instance Type** section, select the *m5.large* or *m5a.large* hardware configuration for your instance.

    **Attention:** We recommend using a virtual machine with at least two cores and 8 GB of RAM.

7.  In the **Key Pair \(Login\)** section, select the prepared key pair or create a new key pair.
8.  In the **Network Settings** section, select the security group that you have prepared to launch Acumatica ERP, or create a new one with specific access rules for your instance.

    **Tip:** If you create a new security group, AWS will automatically assign a name to the group based on its naming conventions.

9.  In the **Summary** section on the right side of the page, review the settings for your instance, and then click **Launch Instance**.

    Wait for the instance to launch. The result of the process will be displayed on the **Launch an Instance** page.

10. After the instance has successfully launched, click **Connect to Instance**.
11. On the **Connect to Instance** page, do the following:
    1.  On the **RDP Client** tab, select **Connect Using RDP Client**.
    2.  Download the Remote Desktop file.
    3.  Click **Get Password**.
12. On the **Get Windows Password** page, upload the file with the prepared key.
13. Click **Decrypt Password**. The page will close, returning you to the **Connect to Instance** page, where the password for accessing your instance will be displayed.
14. Run the Remote Desktop file you have downloaded on your computer to access the web server you have launched.
15. Enter your password for accessing the instance, and click **OK**.

    **Tip:** If the system shows the Remote Desktop Connection page, click **Yes**.

16. For the operating system of the virtual machine, turn on Microsoft Internet Information Services \(IIS\), and make sure that the required IIS features are turned on, as described in [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).

**Parent topic:**[Installing Acumatica ERP in a Data Center](../UserGuide/INST_Installing_in_Data_Center_Mapref.md)

