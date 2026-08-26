# To Update a Project {#_a65978cc-b25b-419f-9dd3-deaccfb692a6 .concept}

If you have modified an item of a customization project in the file system by using an integrated development environment \(IDE\), such as Microsoft Visual Studio, these changes may not be reflected in the customization project yet. You have to update the project in the database before the publication or export of the deployment package of the project.

To update a customization project, perform the following actions:

1.  Open the project in the [Customization Project Editor](../UserGuide/SM_20_45_10.md). \(See [To Open a Project](CG_GL_Project_Opening.md) for details.\)
2.  In navigation pane of the editor, select **Files** to open the Custom Files page.
3.  On the page toolbar, click **Detect Modified Files**, as shown in the screenshot below, to review the files included in the project that could have been modified in the file system but haven't been updated in the customization project yet.

    If at least one conflict is detected, the **Modified Files Detected** dialog box opens \(also shown in the following screenshot\). The dialog box displays each changed file with the check boxes in the **Selected** and **Conflict** columns selected. See [Detecting the Project Items Modified in the File System](CG_Platform_TO_Features_AutoDetectMF.md) for details.

4.  To update the selected files in the project, on the toolbar of the dialog box, click **Update Customization Project**, as the following screenshot shows.

    ![](images/CG_GL_Project_Updating.png "Updating files in the project")


**Parent topic:**[Managing Customization Projects](../CustomizationPlatform/CG_GL_Projects.md)

