# To Manage Workspaces in a Customization Project {#_f0a7fa1c-eca8-4bdc-95d1-0b1f28ea26b4 .concept}

You can add to a customization project the following types of items:

-   *MobileSitemapWorkspace*: This item contains general data, such as the name of a workspace, its sequential number, and its icon.
-   *MobileSitemapWorkspaceItems*: This item contains the screens included in the workspace.
-   *MobileSitemapWorkspaceWidgets*: This item contains the KPI widgets included in the workspace and its screens.

We recommend that you add screens to the workspace of the mobile app in Acumatica ERP. If you were to add a new screen to the mobile app by using the **Add New Screen** command on the Mobile Application page of the Customization Project Editor, the new screen would be added to the **Other** workspace by default. To avoid this, you need to add this screen to one of the workspaces on the [Mobile Workspace](../UserGuide/AU_22_00_13.md) \(AU220013\) form, as described in the *To Add a Screen to a Workspace* section of the [To Manage Workspaces in a Customization Project](MOBILE_Workspaces_CustProjEditor.md) topic.

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

**Parent topic:**[To Manage the Workspaces of the Mobile App](../StudioDeveloperGuide/MOBILE_Workspaces.md)

