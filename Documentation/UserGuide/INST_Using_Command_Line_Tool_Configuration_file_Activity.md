# Acumatica ERP Command-Line Tool: To Deploy an Instance by Using the Configuration File {#_2baa8327-ffa8-4928-a6ae-724d635a53f4 .task}

The following activity will walk you through the process of preparing a configuration file by using the Acumatica ERP Configuration wizard. You will then deploy an Acumatica ERP instance from this configuration file by using the Acumatica ERP command-line tool.

## Story { .section}

Suppose that you are the system administrator of your company and you need to deploy an out-of-the-box Acumatica ERP instance from a configuration file by using the command-line tool.

## Process Overview { .section}

In this activity, you will create a configuration file by using the Acumatica ERP Configuration wizard. Then you will deploy an out-of-the-box Acumatica ERP instance from this configuration file by using the command-line tool.

## System Preparation { .section}

Before you begin performing the step of this activity, you should do the following:

-   Make sure that you have completed the [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Configuration Wizard](INST_Installing_Configuration_Wizard_Activity.md) prerequisite activity.
-   Make sure that a command-line utility has been installed on your computer.

    **Tip:** You can use Command Prompt, the built-in command-line utility for Microsoft Windows.


## Step 1: Creating the Configuration File by Using the Acumatica ERP Configuration Wizard { .section}

To create a configuration file with the settings of an Acumatica ERP instance, do the following:

1.  On the Start menu, click **Acumatica ERP Configuration** to open the Acumatica ERP Configuration wizard.
2.  On the wizard pages, specify the settings to deploy an out-of-the-box instance, as described in [Instance Deployment: To Deploy an Out-of-the-Box Instance](INST_Deploying_Instances_Deploy_Tenant_Without_Demodata_Activity.md).

    In the **Instance Name** box on the Instance Configuration page, specify the name of the instance: `AcumaticaCLT`.

3.  On the Confirmation of Configuration page, click **Save Configuration** to save the configuration data.

    By default, the name of the configuration file is `InstallConfig.xml`.

4.  Save the `InstallConfig.xml` on your computer.

## Step 2: Deploying an Instance by Using the Command-Line Tool { .section}

To deploy an out-of-the-box Acumatica ERP instance with the settings specified in the prepared configuration file, do the following:

1.  On the Start menu, run as administrator a command-line utility installed on your computer.
2.  In the command line, enter a command to navigate to the folder where the Acumatica ERP Configuration wizard is installed and `ac.exe` is stored.

    You can use the `cd [path to ac.exe]` command, where `[path to ac.exe]` is the path to the executed file, which is specified in the following format.

    ```
    cd C:\Program Files (x86)\Acumatica ERP\Data\
    ```

3.  In the command line, enter `ac.exe -f:"path to the configuration file"` to start the execution of the configuration file and the deployment of the instance. `[path to the configuration file]` is the path to the configuration file, which is specified in the following format.

    ```
    ac.exe -f:"C:\Program Folder\InstallConfig.xml"
    ```

4.  Press Enter.

    Wait until the deployment of the *AcumaticaCLT* instance has been completed.

5.  Open the Acumatica ERP Configuration wizard.
6.  On the Welcome page of the Acumatica ERP Configuration wizard, click **Perform Application Maintenance**. The Application Maintenance page opens.
7.  In the **Installed Sites** table, make sure that the *AcumaticaCLT* instance is in the list.
8.  Select the *AcumaticaCLT* instance, and click **Launch**.

    You can access the instance and enable the features for the first time to make sure that it is an out-of-the-box instance, as you have specified in the settings of the configuration file. \(For more information about these tasks, see [Instance Deployment: To Deploy an Out-of-the-Box Instance](INST_Deploying_Instances_Deploy_Tenant_Without_Demodata_Activity.md) and [Instance Deployment: To Enable Features and Activate the License](INST_Deploying_Instances_Enabling_Features_Activity.md).\)


**Parent topic:**[Using the Acumatica ERP Command-Line Tool](../UserGuide/INST_Using_Command_Line_Tool_Mapref.md)

