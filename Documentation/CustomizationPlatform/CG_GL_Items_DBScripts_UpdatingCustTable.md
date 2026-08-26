# To Update Custom Tables in the Project {#_21dd174b-5412-44c0-80a8-d7b88ef25f4a .task}

After you have added a custom table to the project, you might want to continue making changes to the table by using a database administration tool, such as SQL Server Management Studio. We recommend that you update the table schema in the customization project before you export the deployment package of the project or publish the project.

## To Update the Schema of Custom Tables in the Project { .section}

To update the schema of custom tables, do the following:

1.  Open the customization project in the Customization Project Editor. \(See [To Open a Project](CG_GL_Project_Opening.md) for details.\)
2.  In the navigation pane, click **Database Scripts** to open the [Database Scripts](../UserGuide/AU_20_90_00.md) page.
3.  On the More menu \(under **Other**\), click **Reload from Database**.

The platform regenerates the database table schema of all the custom tables added to the project.

**Parent topic:**[Database Scripts](../CustomizationPlatform/CG_GL_Items_DBScripts.md)

