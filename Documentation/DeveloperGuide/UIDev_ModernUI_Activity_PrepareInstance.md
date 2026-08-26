# Modern UI Development: To Deploy an Instance with Custom Forms and the Modern UI {#_9938dc01-2eba-4795-bc69-3384ae3b767b .task}

The following activity will walk you through the process of preparing and deploying an Acumatica ERP instance that you can use to perform the steps in the chapters of this guide.

## Story { .section}

Suppose that you need to perform customization tasks and complete the activities described in the chapters of this guide that are related to the development of the Modern UI. You need to deploy an instance of Acumatica ERP with the *PhoneRepairShop* customization project published and the Modern UI turned on.

## Process Overview { .section}

In this activity, you will prepare the environment and install tools that will help you to perform customization tasks. You will then deploy an instance of Acumatica ERP with the *PhoneRepairShop* customization project published and the dataset from the *T240 Processing Forms* course.

## Step 1: Preparing the Environment { .section}

Before you begin deploying the needed Acumatica ERP instance, do the following:

1.  Make sure that the environment you’re going to use conforms to the [System Requirements for the Acumatica ERP Installation](../Shared/../UserGuide/INST_Preparing_Installation_System_Requirements.md).
2.  Make sure that the Web Server \(IIS\) features listed in [Configuration of IIS Web Server Features](../Shared/../UserGuide/INST_Preparing_Installation_System_Environment.md#_8be3ff2c-3e69-4e41-874f-93bcb9b1d606) are turned on.
3.  Install Microsoft Visual Studio Code.
4.  Clone or download the customization project and the source code of the extension library from the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository in Acumatica GitHub to a folder on your computer.
5.  Install Acumatica ERP. On the Main Software Configuration page of the Acumatica ERP Setup wizard, select the **Install Acumatica ERP** check box.

## Step 2: Deploying the Instance {#_f098c5ca-a387-401b-bc9c-264936488e63 .section}

To perform customization tasks, you need to deploy an instance of Acumatica ERP for the *T290 Modern UI for Developers* training course on the instance.

You deploy an Acumatica ERP instance and configure it as follows:

1.  Open the Acumatica ERP Configuration wizard, and do the following:

    1.  Click **Deploy a New Acumatica ERP Instance for T-Series Developer Courses**.
    2.  On the Instance Configuration page, do the following:
        1.  In the **Training Course** box, select *T290 Modern UI for Developers*.
        2.  In the **Local Path to the Instance** box, select a folder that’s outside of the `C:\Program Files (x86)`, `C:\Program Files`, and `C:\Users` folders. \(We recommend that you store the website folder outside of these folders to avoid an issue with permission to work in these folders when you customize the website.\)
    3.  On the Database Configuration page, make sure the name of the database is `SmartFix_T290`.
    4.  On the Website Configuration page, make sure the **Install Node.js** and **Use Modern UI as Default** check boxes are selected.
    The system creates a new Acumatica ERP instance, adds a new tenant, loads the data to it, and publishes the customization project that is needed for activities of this guide.

    The system also installs Node.js and adds the NodeJs:NodeJsPath key in the appSettings section of the `Web.config` file of the instance.

2.  Make sure that a Visual Studio solution is available in the `App_Data\Projects\PhoneRepairShop` folder of the Acumatica ERP instance folder.

    This is the solution of the extension library that you’ll modify in the activities of this guide.

3.  Sign in to the new tenant by using the following credentials:

    -   **Username**: `admin`
    -   **Password**: `setup`
    Change the password when the system prompts you to do so.

4.  In the top right corner of the Acumatica ERP screen, click the username and then **My Profile**. The [User Profile](../Shared/../UserGuide/SM_20_30_10.md) \(SM203010\) form opens. On the **General Info** tab, under **Personal Settings**, select *YOGIFON* in the **Default Branch** box; then click **Save** on the form toolbar.

    In subsequent sign-ins to this account, you’ll be signed in to this branch.

5.  Optional: Add the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\), [Site Map](../Shared/../UserGuide/SM_20_05_20.md) \(SM200520\), and [Generic Inquiry](../Shared/../UserGuide/SM_20_80_00.md) \(SM208000\) forms to your favorites. For details about how to add a form to your favorites, see [The Acumatica ERP UI: Favorites](../Shared/../UserGuide/GS_Learning_UI_Favorites.md).

**Parent topic:**[Getting Started with the Modern UI](../DeveloperGuide/UIDev_ModernUI_Mapref.md)

