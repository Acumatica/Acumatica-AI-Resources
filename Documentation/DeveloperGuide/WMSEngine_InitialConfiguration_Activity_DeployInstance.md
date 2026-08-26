# Test Instance: To Deploy an Instance {#_dc89ab26-3ab5-47ac-932c-0a2e0b805d09 .task}

This activity will walk you through the process of preparing the environment and deploying an Acumatica ERP instance that you can use to perform the activities of this guide.

## Story { .section}

Suppose that you are preparing to create a custom barcode-driven Acumatica ERP form. Before you can start the customization, you need to deploy an Acumatica ERP instance by using the Acumatica ERP Configuration wizard.

## Process Overview { .section}

You will prepare the environment that you will use to customize Acumatica ERP. Then you will deploy an Acumatica ERP instance with the data for the *T210 Customized Forms and Master-Details Relationships* course.

**Note:** This instance will contain the data that you can use for testing of activities in this guide, the *PhoneRepairShop* customization project, and the source code of the extension library of the customization project.

## Step 1: Preparing the Environment { .section}

Before you begin deploying the needed Acumatica ERP instance, do the following:

1.  Make sure that the environment you’re going to use conforms to the [System Requirements for the Acumatica ERP Installation](../Shared/../UserGuide/INST_Preparing_Installation_System_Requirements.md).
2.  Make sure that the Web Server \(IIS\) features listed in [Configuration of IIS Web Server Features](../Shared/../UserGuide/INST_Preparing_Installation_System_Environment.md#_8be3ff2c-3e69-4e41-874f-93bcb9b1d606) are turned on.
3.  Install the Acuminator extension for Visual Studio.
4.  Install Acumatica ERP. On the Main Software Configuration page of the Acumatica ERP Setup wizard, select the **Install Acumatica ERP** and **Install Debugger Tools** check boxes.

    **Tip:** If you’ve already installed Acumatica ERP without the debugger tools, you should uninstall it and install it again with the **Install Debugger Tools** check box selected. The reinstallation of Acumatica ERP doesn’t affect existing Acumatica ERP instances. You can also install the Acumatica ERP Tools separately. For details, see [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Tools \(Optional\)](../Shared/../UserGuide/INST_Installing_Configuration_Wizard_Install_Tools_Activity.md).


## Step 2: Deploying an Acumatica ERP Instance { .section}

You deploy an Acumatica ERP instance and configure it as follows:

1.  Open the Acumatica ERP Configuration wizard, and do the following:

    1.  Click **Deploy a New Acumatica ERP Instance for T-Series Developer Courses**.
    2.  On the Database Configuration page, make sure that the name of the database is *PhoneRepairShop*.
    3.  On the Instance Configuration page, do the following:
        1.  In the **Local Path to the Instance** box, select a folder that is outside of the `C:\Program Files (x86)`, `C:\Program Files`, and `C:\Users` folders. \(We recommend that you store the website folder outside of these folders to avoid an issue with permission to work in these folders when you perform customization of the website.\)
        2.  In the **Training Course** box, select *T210 Customized Forms and Master-Details Relationships*.
    The system creates a new Acumatica ERP instance, adds a new tenant, loads the data to it, and publishes the customization project.

2.  Make sure a Visual Studio solution is available in the `App_Data\Projects\PhoneRepairShop` folder of the Acumatica ERP instance folder. This is the solution of the extension library in which you will implement the customization in the activities of this guide.

**Parent topic:**[Preparing a Test Instance](../DeveloperGuide/WMSEngine_InitialConfiguration_Mapref.md)

