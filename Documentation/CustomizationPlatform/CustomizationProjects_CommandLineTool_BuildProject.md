# PXCommandLine Tool: BuildProject {#_0a4c1fd3-9798-4a79-9f7d-492a894a6bc1 .concept}

You can use the *BuildProject* value of the `/method` parameter to build a customization package. You must also specify values for the `/in` and `/out` parameters.

You can call the `BuildProject` method by using the following syntax.

```
PX.CommandLine.exe [/website "path\to\web\site\root"] 
/method BuildProject
/in "path\to\source\folder"
/out "path\to\output\file.zip"
[/include "path\to\additional\files.ext" "relative\package\path\to\file.ext"]
[/includeDirectory "path\to\directory\with\additional\files" 
 "relative\package\path\to\directory\with\additional\files"]
[/system "relative\site\path\to\system\file.ext"]
[/description "Package description"]
[/level "1"]


```

**Attention:** You can run the `BuildProject` method only if you are running the PXCommandLine tool with administrator privileges. On the Windows operation system, you can right click the executable file \(`PX.CommandLine.exe`\) for the tool, and select **Run as administrator** from the context menu.

You can use the following required and optional parameters with this method:

-   `/in`: Required. For this parameter, you specify the path to the folder upon which the new customization package will be based. This folder may contain either a customization package that will be modified or the files that will be included in the new customization project.
-   `/out`: Required. You use this parameter to specify the path to the customization package that you build by using the PX.CommandLine tool. The output is a `.zip` archive.
-   `/website`: Optional. For this parameter, you specify a path to a website folder. You use this parameter if the `PX.CommandLine.exe` executable file is not located in the `\Bin` folder of your website.
-   `/include`: Optional. The parameter consists of two values: the absolute path to a file that should be added to the output package, and the relative path inside the `/website` folder where the file is copied after you publish the customization project. This parameter may be repeated any number of times, once for each file.
-   `/includeDirectory`: Optional. The parameter consists of two values: the absolute path to a folder containing files that should be added to the output package, and the relative path to a folder in the website folder where these files are copied after the customization project is published. This parameter may be repeated any number of times, once for each folder.
-   `/description`: Optional. For this parameter, you specify the description of the output customization package.
-   `/level`: Optional. This is the level of the customization package, which helps the Acumatica Customization Platform to resolve conflicts while multiple customization projects are being merged. The value must be an integer. The level is used to resolve any conflicts that arise if multiple modifications of the same items of the website are merged. You use higher values for projects that contain more important changes. If you do not specify a level, the default value is 0.

For example, if you have a customization package located in the `C:\AcumaticaSites\T300` folder and you want to build a customization package based on this project, you use the command shown in the following code.

```
PX.CommandLine.exe /method BuildProject
/in "C:\AcumaticaSites\T300"
/out "C:\AcumaticaSites\MyNewPackage.zip"
```

This command builds a customization package and puts the resulting `.zip` archive in the`C:\AcumaticaSites` folder.

You can also build a new customization package based on a project stored in a source control folder. To do that, you execute a command that looks similar to the one shown in the following code.

```
PX.CommandLine.exe [/website "path_to_Acumatica_website"] 
/method BuildProject
/in "path_to_customization_source_control_folder"
/out "full_name_of_customization_file.zip"
```

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

