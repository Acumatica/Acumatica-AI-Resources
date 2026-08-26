# To Manage the Workspaces of the Mobile App {#_f2768c94-6c51-49a3-ac65-17ed333f436d .concept}

The main menu of the Acumatica mobile app contains workspaces that are similar to those in your Acumatica ERP instance but that you configure separately.

You manage the workspaces of the main menu by using the Customization Project Editor and the [Mobile Workspaces](../Shared/../UserGuide/AU_22_00_12.md) \(AU220012\) and [Mobile Workspace](../Shared/../UserGuide/AU_22_00_13.md) \(AU220013\) forms in your instance, as well as in the mobile app itself.

If you configure the workspaces on the [Mobile Workspaces](../Shared/../UserGuide/AU_22_00_12.md) and [Mobile Workspace](../Shared/../UserGuide/AU_22_00_13.md) forms and in your customization project, the system applies these settings to all copies of the Acumatica mobile apps connected to the current tenant in the Acumatica ERP instance. To configure these settings, you need to have the *Administrator* or *Customizer* predefined role.

If any user configures workspaces, screens, and KPI widgets in the mobile app, these settings are applied to the mobile app for only this user.

## To Add a Workspace to a Customization Project { .section}

To add any workspaces to a particular customization project, perform the following steps:

1.  Open the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\) form, and in the **Project Name** column, click the link of the customization project. The Customization Project Editor opens.
2.  In the navigation pane, click **Mobile Application** to open the [Mobile Application](../Shared/../UserGuide/AU_22_00_00.md) page.
3.  On the More menu of the page, click **Add Customized Workspaces**.

    The Mobile Workspace page opens.

4.  On the page toolbar, click **Add New Record**.

    The **Add Workspace** dialog box opens. The dialog box contains workspaces that you have modified. These include workspaces for which you have added any screens or widgets on the [Mobile Workspace](../Shared/../UserGuide/AU_22_00_13.md) \(AU220013\) form, new workspaces you have created on the form, as well as workspaces whose order you have changed on the [Mobile Workspaces](../Shared/../UserGuide/AU_22_00_12.md) \(AU220012\) form.

5.  Select the unlabeled check box in each row with a workspace whose changes you want to add to the project.
6.  Click **Save** to add the selected workspaces to the customization project and save your changes.

    In the navigation pane, notice that the [Mobile Workspaces](../Shared/../UserGuide/AU_MobileWorkspaces.md) page is listed under the **Mobile Application** node. Open this page, and you can see that the More menu of this page contains the **Add Customized Workspaces** command.


## To Configure Workspaces from a Customization Project { .section}

To configure workspaces from a customization project, perform the following steps:

1.  Open the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\) form, and in the **Project Name** column, click the link of the customization project. The Customization Project Editor opens.
2.  In the navigation pane, click **Mobile Workspaces** to open the Mobile Application page.
3.  On the More menu of the page, click **Manage Workspaces**.

    The [Mobile Workspaces](../Shared/../UserGuide/AU_22_00_12.md) \(AU220012\) form opens in a new window.

4.  On the form, configure the workspaces as described in [To Configure Workspaces in the Acumatica ERP Instance](../Shared/../StudioDeveloperGuide/MOBILE_Workspaces_Instance.md).
5.  Save your changes, and close the window.

## To Update a Workspace in a Customization Project { .section}

To update a workspace in a customization project after you have modified it in the Acumatica ERP instance, perform the following steps:

1.  Open the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\) form, and in the **Project Name** column, click the link of the customization project. The Customization Project Editor opens.
2.  In the navigation pane, click **Mobile Workspaces** to open the Mobile Application page.
3.  In the table on the page, click the workspace you want to update.
4.  On the More menu, click **Reload from Database**.

## To Remove a Workspace from a Customization Project { .section}

To remove a workspace from a customization project, perform the following steps:

1.  Open the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\) form, and in the **Project Name** column, click the link of the customization project. The Customization Project Editor opens.
2.  On the navigation pane, click **Mobile Workspaces** to open the Mobile Application page.
3.  In the table on the page, click the row with the workspace you want to remove.
4.  On the page toolbar, click **Delete Row**.
5.  Save your changes.

**Parent topic:**[Mobile Application](../CustomizationPlatform/CG_GL_Items_MobileApp.md)

