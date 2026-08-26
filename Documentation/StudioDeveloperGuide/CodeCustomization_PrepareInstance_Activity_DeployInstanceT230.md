# Test Instance for Customization: To Deploy an Instance with Custom Maintenance and Data Entry Forms {#_30b41e01-233b-4faf-b6c4-05931f51d493 .task}

This activity will walk you through the preparation and deployment of an Acumatica ERP instance that you can use to perform the activities in this guide that are related to the development of actions.

## Story { .section}

Suppose that you need to perform customization tasks and complete the activities described in the chapters of this guide that are related to the development of actions. You need to deploy an instance of Acumatica ERP with the *PhoneRepairShop* customization project published and configure the instance.

## Process Overview { .section}

In this activity, you will prepare the environment and install tools that will help you to perform customization tasks. You will then deploy the instance of Acumatica ERP with the *PhoneRepairShop* customization project published and the dataset from the *T220 Data Entry and Setup Forms* course. Finally, in Acumatica ERP, you will configure the instance that you have deployed.

## Step 1: Preparing the Environment { .section}

To prepare the environment, do the following:

1.  Make sure that the environment you’re going to use conforms to the [System Requirements for the Acumatica ERP Installation](../Shared/../UserGuide/INST_Preparing_Installation_System_Requirements.md).
2.  Make sure that the Web Server \(IIS\) features listed in [Configuration of IIS Web Server Features](../Shared/../UserGuide/INST_Preparing_Installation_System_Environment.md#_8be3ff2c-3e69-4e41-874f-93bcb9b1d606) are turned on.
3.  Install the Acuminator extension for Visual Studio.
4.  Clone or download the customization project and the source code of the extension library from the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository in Acumatica GitHub to a folder on your computer.
5.  Install Acumatica ERP. On the Main Software Configuration page of the Acumatica ERP Setup wizard, select the **Install Acumatica ERP** and **Install Debugger Tools** check boxes.

    **Tip:** If you’ve already installed Acumatica ERP without the debugger tools, you should uninstall it and install it again with the **Install Debugger Tools** check box selected. The reinstallation of Acumatica ERP doesn’t affect existing Acumatica ERP instances. You can also install the Acumatica ERP Tools separately. For details, see [Acumatica ERP Installation On-Premises: To Install the Acumatica ERP Tools \(Optional\)](../Shared/../UserGuide/INST_Installing_Configuration_Wizard_Install_Tools_Activity.md).


## Step 2: Deploying the Instance { .section}

To perform customization tasks, you need to deploy an instance of Acumatica ERP for the *T230 Actions* training course on the instance.

You deploy an Acumatica ERP instance and configure it as follows:

1.  Open the Acumatica ERP Configuration wizard, and do the following:

    1.  Click **Deploy a New Acumatica ERP Instance for T-Series Developer Courses**.
    2.  On the **Instance Configuration** page, do the following:
        1.  In the **Training Course** box, select *T230 Actions*.
        2.  In the **Local Path to the Instance** box, select a folder that’s outside of the `C:\Program Files (x86)`, `C:\Program Files`, and `C:\Users` folders. \(We recommend that you store the website folder outside of these folders to avoid an issue with permission to work in these folders when you customize the website.\)
    3.  On the **Database Configuration** page, make sure that the name of the database is `SmartFix_T230`.
    The system creates a new Acumatica ERP instance, adds a new tenant, loads the dataset to it, and publishes the customization project that is needed for activities of this guide.

2.  Make sure that a Visual Studio solution is available in the `App_Data\Projects\PhoneRepairShop` folder of the Acumatica ERP instance folder.

    This is the solution of the extension library that you’ll modify in the activities of this guide.

3.  Sign in to the new tenant by using the following credentials:

    -   **Username**: `admin`
    -   **Password**: `setup`
    Change the password when the system prompts you to do so.

4.  In the top right corner of the Acumatica ERP screen, click the username and then **My Profile**. The [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SM203010\) form opens. On the **General Info** tab, under **Personal Settings**, select *YOGIFON* in the **Default Branch** box; then click **Save** on the form toolbar.

    In subsequent sign-ins to this account, you’ll be signed in to this branch.

5.  Optional: Add the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\), [Site Map](../Shared/../UserGuide/SM_20_05_20.md) \(SM200520\), and [Generic Inquiry](../Shared/../UserGuide/SM_20_80_00.md) \(SM208000\) forms to your favorites. For details about how to add a form to your favorites, see [The Acumatica ERP UI: Favorites](../Shared/../UserGuide/GS_Learning_UI_Favorites.md).

**Parent topic:**[Preparing a Test Instance for Customization](../StudioDeveloperGuide/CodeCustomization_PrepareInstance_Mapref.md)

