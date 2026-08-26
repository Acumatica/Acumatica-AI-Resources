# PXCommandLine Tool: MergePackages {#_4f0c7ce7-3722-45bd-aa09-1626a26b5e4c .concept}

You can use the *MergePackages* value of the `/method` parameter to merge multiple customization packages into a single package. You can use the following required and optional parameters with this method:

-   `/website`: Optional. You use this parameter to specify the path to the website folder.
-   `/packages`: Required. You use this parameter to specify the customization project names and the path to the corresponding customization packages \(`.zip` or `.xml` files\)—or to the directories that contain these customization packages—that should be merged into one customization project. You should separate the project names by the`;`and `|` delimiters, as shown in the following example: `package_path1;project_name1|package_path2;project_name2|package_path3;project_name3`.
-   `/resultPath`: Required. You use this parameter to specify the path to the merged customization package.
-   `/level`: Optional. You use this parameter to specify the level of the merged customization package. The value of this parameter is an integer.

You can call the `MergePackages` method by using the following syntax.

```
PX.CommandLine.exe [/website "c:\repos\repo2\WebSites\Pure\Site"] 
/method MergePackages
/packages "c:\repos\lego1\CcsLego\ConstructionFeatures.zip;ConstructionFeatures|
c:\repos\Construction\shared\ConstructionPackage.zip;ConstructionPackage"
/resultPath "c:\repos\repo2\WebSites\Pure\Site\Bin\MergedConstruction.zip"
[/level "1"]
```

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

