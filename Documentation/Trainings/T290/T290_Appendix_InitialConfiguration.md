# Appendix: Initial Configuration

If for some reason you cannot complete the instructions in [Modern UI Development: To Deploy an Instance with Custom Forms and the Modern UI](../../DeveloperGuide/UIDev_ModernUI_Activity_PrepareInstance.md), you can create an Acumatica ERP instance and manually publish the needed customization project as described in this topic.

## Step 1: Deploying the Needed Acumatica ERP Instance for the Training Course

You deploy an Acumatica ERP instance and configure it as follows:

1.  To deploy a new application instance, open the Acumatica ERP Configuration wizard, and do the following:

    1.  On the Database Configuration page, type the name of the database: `SmartFix_T290`.
    2.  On the Website Configuration page, make sure the **Install NodeJS** and **Use Modern UI as Default** check boxes are selected.
    3.  On the Tenant Setup page, create a tenant with the *T100* dataset inserted by specifying the following settings:
        -   **Tenant Name**: `Company`
        -   **New**: Selected
        -   **Insert Data**: *T100*
        -   **Parent Tenant ID**: *1*
        -   **Visible**: Selected
    4.  On the Instance Configuration page, in the **Local Path of the Instance** box, select a folder that’s outside of the `C:\Program Files (x86)`, `C:\Program Files`, and `C:\Users` folder. We recommend that you store the website folder outside of these folders to avoid an issue with permission to work in these folders when you perform customization of the website.
    The system creates a new Acumatica ERP instance, adds a new tenant, and loads the selected data to it.

2.  Sign in to the new tenant by using the following credentials:

    -   **Username**: `admin`
    -   **Password**: `setup`
    Change the password when the system prompts you to do so.

3.  In the top right corner of the Acumatica ERP screen, click the username and then **My Profile**. The [User Profile](../../Shared/../UserGuide/SM_20_30_10.md) \(SM203010\) form opens. On the **General Info** tab, under **Personal Settings**, select *YOGIFON* in the **Default Branch** box; then click **Save** on the form toolbar.

    In subsequent sign-ins to this account, you’ll be signed in to this branch.

4.  Optional: Add the [Customization Projects](../../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\), [Site Map](../../Shared/../UserGuide/SM_20_05_20.md) \(SM200520\), and [Generic Inquiry](../../Shared/../UserGuide/SM_20_80_00.md) \(SM208000\) forms to your favorites. For details about how to add a form to your favorites, see [The Acumatica ERP UI: Favorites](../../Shared/../UserGuide/GS_Learning_UI_Favorites.md).

## Step 2: Publishing the Required Customization Project

You load the customization project with the results of the *T240 Processing Forms* training course and publish this project as follows:

1.  On the Customization Projects \(SM204505\) form, create a project with the name *PhoneRepairShop*, and open it.
2.  In the menu of the Customization Project Editor, click **Source Control** &gt; **Open Project from Folder**.
3.  In the dialog box that opens, specify the path to the `ModernUI\T290\SourceFiles\PhoneRepairShop` folder, which you have downloaded from Acumatica GitHub, and click **OK**.
4.  Bind the customization project to the source code of the extension library as follows:
    1.  Copy the `ModernUI\T290\SourceFiles\PhoneRepairShop_Code` folder to the `App_Data\Projects` folder of the website.

        **Attention:** By default, the system uses the `App_Data\Projects` folder of the website as the parent folder for the solution projects of extension libraries.

        If the website folder is outside of the `C:\Program Files (x86)`, `C:\Program Files`, and `C:\Users` folders, we recommend that you use the `App_Data\Projects` folder for the project of the extension library.

        If the website folder is in the `C:\Program Files (x86)`, `C:\Program Files`, or `C:\Users` folder, we recommend that you store the project outside of these folders to avoid an issue with permission to work in these folders. In this case, you need to update the links to the website and library references in the project.

    2.  Open the solution, and build the `PhoneRepairShop_Code` project.
    3.  Reload the Customization Project Editor.
    4.  In the menu of the Customization Project Editor, click **Extension Library** &gt; **Bind to Existing**.
    5.  In the dialog box that opens, specify the path to the `App_Data\Projects\PhoneRepairShop_Code` folder, and click **OK**.
5.  On the menu of the Customization Project Editor, click **Publish** &gt; **Publish Current Project**.

    **Note:** The **Modified Files Detected** dialog box opens before publication because you have rebuilt the extension library in the `PhoneRepairShop_Code` Visual Studio project. The `Bin\PhoneRepairShop_Code.dll` file has been modified and you need to update it in the project before the publication.


