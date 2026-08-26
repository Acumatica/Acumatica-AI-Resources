# PXCommandLine Tool: DeleteProject {#_b2abef76-1354-490e-b7f1-3702a2054f28 .concept}

You can use the *DeleteProject* value of the `/method` parameter to delete a customization project from your instance and from the instance's database. You must use the `/name` parameter to specify the name of the customization project that you want to delete.

You can call the `DeleteProject` method by using the following syntax.

```
PX.CommandLine.exe [/website "path\to\web\site\root"] 
/method DeleteProject
/name "CustomizationName"

```

Note that deleting a customization project by using this command only deletes the related record of the customization project from the database. It does not revert any changes that the customization project may have made to other existing database objects.

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

