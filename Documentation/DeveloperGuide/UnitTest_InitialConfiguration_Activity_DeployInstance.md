# Test Instance for Unit Testing: To Deploy an Instance {#_f42fab36-f8df-434b-95da-d79c5b264785 .task}

The following activity will walk you through the process of preparing and deploying an Acumatica ERP instance that you can use to perform the steps in the chapters of this guide that are related to the development of unit tests.

## Story { .section}

Suppose that you want to learn how to create any unit tests provided in the Unit Test Framework Guide. You need to deploy an Acumatica ERP instance by using the Acumatica ERP Configuration Wizard.

## Process Overview { .section}

You will prepare the environment—that is, install the software that you need to use Acumatica ERP and to configure this software. Then you will deploy an Acumatica ERP instance with the data for the *T280 Testing Business Logic with the Acumatica Unit Test Framework* course.

## Step 1: Preparing the Environment { .section}

Before you begin deploying the needed Acumatica ERP instance, do the following:

1.  Make sure that the environment you’re going to use conforms to the [System Requirements for the Acumatica ERP Installation](../Shared/../UserGuide/INST_Preparing_Installation_System_Requirements.md).
2.  Make sure that the Web Server \(IIS\) features listed in [Configuration of IIS Web Server Features](../Shared/../UserGuide/INST_Preparing_Installation_System_Environment.md#_8be3ff2c-3e69-4e41-874f-93bcb9b1d606) are turned on.
3.  Install the Acuminator extension for Visual Studio.
4.  Install Acumatica ERP. On the Main Software Configuration page of the Acumatica ERP Setup wizard, select the **Install Acumatica ERP** and **Install Debugger Tools** check boxes.

    **Tip:** If you’ve already installed Acumatica ERP without the debugger tools, you should uninstall it and install it again with the **Install Debugger Tools** check box selected. The reinstallation of Acumatica ERP doesn’t affect existing Acumatica ERP instances. You can also install the Acumatica ERP Tools separately. For details, see [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Tools \(Optional\)](../Shared/../UserGuide/INST_Installing_Configuration_Wizard_Install_Tools_Activity.md).


## Step 2: Deploying an Acumatica ERP Instance with the Code of the Customization Project { .section}

To deploy an Acumatica ERP instance and configure it, do the following:

1.  Open the Acumatica ERP Configuration wizard, and do the following:

    1.  Click **Deploy a New Acumatica ERP Instance for T-Series Developer Courses**.
    2.  On the **Instance Configuration** page, do the following:
        1.  In the **Training Course** box, select *T280 Testing Business Logic with the Acumatica Unit Test Framework*.
        2.  In the **Local Path to the Instance** box, select a folder that’s outside of the `C:\Program Files (x86)`, `C:\Program Files`, and `C:\Users` folders. \(We recommend that you store the website folder outside of these folders to avoid an issue with permission to work in these folders when you customize the website.\)
    3.  On the **Database Configuration** page, make sure the name of the database is *SmartFix\_T280*.
    The system creates a new Acumatica ERP instance, adds a new tenant, loads the data to it, and publishes the customization project that is needed for this training course.

2.  Make sure that a Visual Studio solution is available in the `App_Data\Projects\PhoneRepairShop` folder of the Acumatica ERP instance folder.

    This is the solution of the extension library that you’ll modify in the activities of this guide.


**Parent topic:**[Preparing a Test Instance](../DeveloperGuide/UnitTest_InitialConfiguration_Mapref.md)

