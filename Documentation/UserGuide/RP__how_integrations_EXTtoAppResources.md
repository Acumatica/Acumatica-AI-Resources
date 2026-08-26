# To Add an Integrated External Application Resource to Acumatica Site Map {#_e51dc7e9-be5b-46b1-960f-fc1c3be00553 .task}

To add an integrated an external application to be used as Acumatica ERP form, you use [Application Resources](SM_30_10_10.md) \(SM301010\) form. For more information about integrations with external applications, see [Integration with External Applications](SM__con_Integration_External_Applications.md).

## To Add Integrated Application to Acumatica Site Map { .section}

1.  Open the [Application Resources](SM_30_10_10.md) \(SM301010\) form.
2.  In the **Application ID** box, you select an integration with an external application that contains a resource to be added in Acumatica ERP.
3.  On the form toolbar, click **Publish to the UI**. In the dialog box that opens, do the following:
    1.  In the **Site Map Title** box, you type the name of the resource page to be displayed on the site map. Other boxes are populated automatically, based on the values you specified. The **Workspace** and **Category** boxes are populated with the default values for the application resources.
    2.  In the **Screen ID**, leave the automatically assigned identifier.
    3.  In the **Access Rights** section, specify the access rights for the selected resource. You can select one of the following options:
        -   **Set to Granted for All Roles**: The system will set the access rights for this form to *Granted* for all user roles in the system.
        -   **Set to Revoked for All Roles**: The system will set the access rights for this form to *Revoked* for all user roles in the system.
        -   **Copy Access Rights from Screen** \(default\): The system will copy the set of the access rights from the specified form.
    4.  Click **Publish** to publish the dashboard and close the dialog box.
4.  On the form toolbar, click **View Resource** to display the Acumatica ERP page with the external application resource selected on the form.

    **Tip:** The screen ID, title, workspace, and category of an inquiry can be modified on the [Site Map](SM_20_05_20.md) \(SM200520\) form.


**Parent topic:**[Managing Power BI Integration](../UserGuide/RP__Integration_Power_BI.md)

