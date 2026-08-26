# To Configure Workspaces in the Acumatica ERP Instance {#_911d5e97-b703-4e3a-9835-6193add5e719 .concept}

You configure the workspaces and their screens of the Acumatica mobile app in your Acumatica ERP instance by using the [Mobile Workspaces](../UserGuide/AU_22_00_12.md) \(AU220012\) and [Mobile Workspace](../UserGuide/AU_22_00_13.md) \(AU220013\) forms, as well as the Customization Project Editor. This topic describes the way you can configure the workspaces of the mobile app.

This configuration applies to all copies of the Acumatica mobile app connected to the current tenant in an Acumatica ERP instance. To perform this configuration, you need to have the *Administrator* or *Customizer* predefined role. To view the applied changes, if you are signed in to the mobile app, you need to sign out and then to sign in again.

## To Add a Workspace { .section}

You can add a workspace to the mobile app so that its tile is shown on the Home screen. Do the following:

1.  In your Acumatica ERP instance, open the [Mobile Workspaces](../UserGuide/AU_22_00_12.md) \(AU220012\) form.
2.  On the form toolbar, click **Add New Record** and provide the following values:
    -   **Workspace ID**: Internal identifier of the workspace
    -   **Display Name**: Name of the workspace that is displayed in the mobile app
3.  Make sure that the **Visible** check box is selected in the row of the added workspace.
4.  Save your changes.

## To Change the Order of Workspaces { .section}

To change the order in which the workspaces are displayed on the Home screen of the mobile app, perform the following steps:

1.  Open the [Mobile Workspaces](../UserGuide/AU_22_00_12.md) \(AU220012\) form.
2.  Click the row with the workspace you want to move.
3.  On the form toolbar, click **Move Row Up** or **Move Row Down** to change the position of the workspace.
4.  Save your changes.

## To Remove a Workspace from the List of Workspaces { .section}

To remove a workspace from the Home screen of the mobile app, perform the following steps:

1.  Open the [Mobile Workspaces](../UserGuide/AU_22_00_12.md) \(AU220012\) form.
2.  Click the row with the workspace you want to delete.
3.  On the form toolbar, click **Delete Row**.

    Alternatively, you can clear the check box in the **Visible** column of the row with the workspace. In this case, the workspace will not be displayed on the mobile app, but the system will store its settings, and you can make it visible again if needed.

4.  Save your changes.

## To Add a Screen to a Workspace { .section}

To add a screen to a workspace, perform the following steps:

1.  Open the [Mobile Workspaces](../UserGuide/AU_22_00_12.md) \(AU220012\) form.
2.  In the **Workspace ID** column of the table on the form, click the link with the identifier of the workspace for which you want to add a screen.

    The [Mobile Workspace](../UserGuide/AU_22_00_13.md) \(AU220013\) opens for the workplace.

3.  On the table toolbar of the **Screens** tab, click **Add Row**.
4.  In the **Item Name** column, select the required screen.

    **Note:** If you have added a new screen to the mobile site map and want to add it to a workspace, you have to publish the customization project first. The new screen is displayed in the **Item Name** selector only after changes to the mobile site map are applied to the instance.

5.  Make sure the **Visible** check box is selected for the added screen.
6.  Save your changes.

## To Change the Position of a Screen in a Workspace { .section}

To change the position of any screen in a workspace, perform the following steps:

1.  Open the [Mobile Workspace](../UserGuide/AU_22_00_13.md) \(AU220013\) form, and select the workspace.
2.  Click the row with the screen you want to move.
3.  On the form toolbar, click **Move Row Up** or **Move Row Down** to change the position of the screen.
4.  Save your changes.

## To Remove a Screen from a Workspace { .section}

To remove a screen from a workspace, perform the following steps:

1.  Open the [Mobile Workspace](../UserGuide/AU_22_00_13.md) \(AU220013\) form for the required workspace.
2.  Click the row with the screen you want to delete.
3.  On the table toolbar, click **Delete Row**.

    Alternatively, you can clear the check box in the **Visible** column of the row with this screen. In this case, the screen will not be displayed in the workspace but will remain in the list of screens on the **Screens** tab of this form, and you can make it visible again if needed.

4.  Save your changes.

## To Add a Widget to a Workspace { .section}

To add a widget to a workspace, perform the following steps:

1.  Open the [Mobile Workspace](../UserGuide/AU_22_00_13.md) \(AU220013\) form for the required workspace.
2.  On the table toolbar of the **Widgets** tab, click **Add Row**.
3.  In the **Dashboard** column, select the dashboard that contains the widget.
4.  In the **Widget** column, select the widget you want to add to the dashboard.
5.  In the row, make sure the **Visible** check box is selected.
6.  Save your changes.

## To Change the Position of a Widget in a Workspace { .section}

To change the position of any widget in a workspace, perform the following steps:

1.  Open the [Mobile Workspace](../UserGuide/AU_22_00_13.md) \(AU220013\) form for the workspace.
2.  On the **Widgets** tab, click the row with the widget you want to move.
3.  On the table toolbar, click **Move Row Up** or **Move Row Down** to change the position of the widget.
4.  Save your changes.

## To Remove a Widget from a Workspace { .section}

To remove a widget from a workspace, perform the following steps:

1.  Open the [Mobile Workspace](../UserGuide/AU_22_00_13.md) \(AU220013\) form for the required workspace.
2.  On the **Widgets** tab, click the row with the widget you want to delete.
3.  On the table toolbar, click **Delete Row**.
4.  Save your changes.

Alternatively, you can clear the check box in the **Visible** column of the row with the widget. In this case, the widget will not be displayed in the workspace but will remain in the list of widgets on the [Mobile Workspace](../UserGuide/AU_22_00_13.md) \(AU220013\) form, and you can make it visible again if needed.

**Parent topic:**[To Manage the Workspaces of the Mobile App](../StudioDeveloperGuide/MOBILE_Workspaces.md)

