# PXCommandLine Tool: General Information {#_01dc39fa-c2a2-49cc-be32-281dd67e569e .concept}

The PX.CommandLine tool is a console application that can be used to work with customization packages in automated scenarios, such as continuous integration \(CI\) scripts. It gives developers the ability to integrate a number of operations that are performed in the Customization Project Editor into scripts—such as building, uploading, and deleting customization projects.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following by using the PXCommandLine tool:

-   Run validations of all `PXGraph` and `PXCache` extensions in the current application domain
-   Upload and publish a customization package to the website
-   Validate a published customization project before upgrading your Acumatica ERP instance
-   Unpublish customization projects from the website
-   Build a customization package that uses existing files or is based on a customization project
-   Delete a customization project from the instance and from the instance's database
-   Merge multiple customization projects into a single customization project
-   Export a snapshot
-   Run the `CustomizationPlugin.UpdateDatabase` methods from customization plug-ins of all published customization projects
-   Update the pages and files of the website by using a customization package file

## Applicable Scenarios { .section}

You use the PXCommandLine tool if you need to work with customization projects in automated scenarios.

## Use of the PX.CommandLine Tool { .section}

The PX.CommandLine tool is an executable file \(`PX.CommandLine.exe`\) located in the `\Bin` folder of your customization project.

When you run `PX.CommandLine.exe`, you supply a set of command-line parameters, with each presented in the following format.

```
parameter_name "parameter_value"
```

**Tip:** You do not need to use quotation marks for the parameter value if this value does not contain any spaces.

The tool also supports parameters of the Boolean type that do not have a corresponding value, such as the `/replace` parameter in [PXCommandLine Tool: UploadCustomization](CustomizationProjects_CommandLineTool_UploadCustomization.md).

The PX.CommandLine tool supports the following syntax.

```
PX.CommandLine.exe 
[/website "path\to\web\site\root"\] 
/method (ValidateExtensions | UploadCustomization | ValidateCustomization |
RemoveCustomization | PublishCustomization |BuildProject | DeleteProject |
MergePackages | ExportSnapshot | RunPluginsUpdate | UpdatePages)
```

**Tip:** Optional parameters are enclosed in square brackets.

You can use the following parameters:

-   `/website`: Optional. This parameter provides a path to a website folder. You use the parameter if the `PX.CommandLine.exe` executable file is not located in the `\Bin` folder of your website.
-   `/method`: Required. This parameter indicates the action that should be executed. The following topics describe the possible values for the parameter and their usage:
    -   [PXCommandLine Tool: ValidateExtensions](CustomizationProjects_CommandLineTool_ValidateExtensions.md)
    -   [PXCommandLine Tool: UploadCustomization](CustomizationProjects_CommandLineTool_UploadCustomization.md)
    -   [PXCommandLine Tool: ValidateCustomization](CustomizationProjects_CommandLineTool_ValidateCustomization.md)
    -   [PXCommandLine Tool: RemoveCustomization](CustomizationProjects_CommandLineTool_RemoveCustomization.md)
    -   [PXCommandLine Tool: PublishCustomization](CustomizationProjects_CommandLineTool_PublishCustomization.md)
    -   [PXCommandLine Tool: BuildProject](CustomizationProjects_CommandLineTool_BuildProject.md)
    -   [PXCommandLine Tool: DeleteProject](CustomizationProjects_CommandLineTool_DeleteProject.md)
    -   [PXCommandLine Tool: MergePackages](CustomizationProjects_CommandLineTool_MergePackages.md)
    -   [PXCommandLine Tool: ExportSnapshot](CustomizationProjects_CommandLineTool_ExportSnapshot.md)
    -   [PXCommandLine Tool: RunUpdatePlugins](CustomizationProjects_CommandLineTool_RunPluginsUpdate.md)
    -   [PXCommandLine Tool: UpdatePages](CustomizationProjects_CommandLineTool_UpdatePages.md)

Additionally, each action that is executed by using the `/method` parameter and the corresponding value has its own set of additional parameters. These are also discussed in the topics that are listed above.

**Parent topic:**[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)

