# PXCommandLine Tool: PublishCustomization {#_88da87bb-faa2-4bf2-bf83-aa34ff9a9908 .concept}

You can use the *PublishCustomization* value of the `/method` parameter to publish a customization project to your Acumatica ERP instance. Starting in Acumatica ERP 2026 R1 Preview 1, you can publish any number of customization projects to your instance. You must use the `/name` parameter to specify the names of the customization projects that you want to publish, with each separated by the`|`delimiter, as shown in the following example.

```
/name "Package1|Package2|Package3"
```

You can use the optional `/merge` parameter to specify that all the existing customization projects should remain published. If this parameter is not specified, all existing customization projects will be unpublished except for those specified by the `/name` parameter. The `/merge` parameter instructs the customization engine to merge the customization projects specified by the `/name` parameter with all the currently published customization projects.

Starting in Acumatica ERP 2026 R1 Preview 1, you can also specify the optional `/skipPreviouslyExecutedDbScripts` parameter to the skip the execution of the database scripts that are included with the customization if they were already executed previously.

You can call the `PublishCustomization` method by using the following syntax.

```
PX.CommandLine.exe [/website "path\to\web\site\root"] 
/method PublishCustomization
/name "CustomizationName" 
[/merge] 
[/skipPreviouslyExecutedDbScripts]

```

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

