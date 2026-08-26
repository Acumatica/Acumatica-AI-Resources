# Detecting the Project Items Modified in the File System {#_3b85d738-5d52-47e3-a0bb-75a695dc76a1 .concept}

In the website folder in the file system, the platform tracks changes that you make to the following files:

-   Files with the customization code added to the customization project as DAC items
-   Files with the customization code added to the project as Code items
-   Custom files added to the project

If you make changes to these files in the file system, you have to update them in the project before you publish the project or export the deployment package of the project.

When you run the project publication process or export the project, the Acumatica Customization Platform compares each file in the project \(in the database\) with the original file and detects the files modified in the file system. If a modified file is found, there is a conflict, and the platform opens the **Modified Files Detected** dialog box to give you the option to update the files in the project or discard the changes and use the files from the database.

**Note:** If you have used the File Editor of the Customization Project Editor \(see[Files](../UserGuide/AU_20_45_00.md) for details\) to modify a *File* item in a customization project and saved the changes in the database, the changes are not saved in the original file in the file system. Then if you click **Detect Modified Files** on the toolbar of the Files page, the platform does not detect a conflict because the file in the database is newer. The platform automatically updates the original file during the publication of the customization project.

The **Modified Files Detected** dialog box lists all custom and customized files in the website folder. The **Conflict** check box means that the file version in the file system differs from the file version in the customization project. This could happen, for example, if you have modified the customization code in a file by using MS Visual Studio and the change is not yet reflected in the customization project. You have to resolve all conflicts in the project before you publish the project or export the deployment package of the project.

In the dialog box, you can invoke the following actions for conflicting files:

-   **Update Customization Project**: Updates the customization project with the file version from the file system.
-   **Discard All Changes**: Keeps the file version that exists in the customization project and discard the changes in the file system.

These actions are performed on the selected files—that is, all conflicting files for which you have selected the check box in the **Selected** column.

You can invoke one action for one individual file and another action for another file. For example, you can first select the files that you want to update in the customization project and click **Update Customization Project**. Then you can click **Discard All Changes** to cancel the changes made to all other conflicting files.

Make sure you have updated all appropriate files before removing all remaining conflicts. If you discard changes, after you publish the customization project, the platform updates all selected conflicting files from the database, therefore the files will return to the original state in the file system.

No conflicts will appear in the **Modified Files Detected** dialog box until a file included in the customization project is modified in the file system again.

**Parent topic:**[To Update a File Item in a Project](../CustomizationPlatform/CG_GL_Items_Files_Updating.md)

