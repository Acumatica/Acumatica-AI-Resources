# Managing Customization Projects {#_03b07c52-2ba7-47f0-9b91-00b36aaf21aa .concept}

A customization project is a set of changes to the user interface and functionality of Acumatica ERP. A customization project, described more fully in [Customization Project](CG_Platform_Project.md), might include the following:

-   New custom forms and modifications to existing forms of Acumatica ERP
-   Extensions for the business logic
-   Custom reports
-   Custom application configuration
-   Additional files that you need for the customization

In Acumatica ERP, you manage customization projects by means of the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form. On this form, you can add a new customization project, open a customization project for editing in the [Customization Project Editor](../UserGuide/SM_20_45_10.md), publish any number of customization projects, cancel the publication of customization projects, export a customization project as the deployment package, import a customization project from an existing deployment package, and delete a customization project.

**Note:** In MySQL, the maximum size of one packet that can be transmitted to or from a server is 4MB by default. If you use MySQL and want to manage a customization project with the size that is larger than the default maximum value, you have to increase the max\_allowed\_packet variable in the server. The largest possible packet size is 1GB.

-   **[Getting Started with Customization Projects](../CustomizationPlatform/CustomizationProjects_GettingStarted_Mapref.md)**  

-   **[To Open a Project](../CustomizationPlatform/CG_GL_Project_Opening.md)**  

-   **[To Update a Project](../CustomizationPlatform/CG_GL_Projects_Updating.md)**  

-   **[To Delete a Project](../CustomizationPlatform/CG_GL_Projects_Deleting.md)**  

-   **[To Export a Project](../CustomizationPlatform/CG_GL_Projects_Deploying_Exporting.md)**  

-   **[To Replace the Content of a Project from a Package](../CustomizationPlatform/CG_GL_Projects_ReplacingContent.md)**  

-   **[To Merge Multiple Projects](../CustomizationPlatform/CG_GL_Projects_ManagingMultiple_Merge.md)**  

-   **[To Add a Custom Feature Switch](../CustomizationPlatform/CG_AddFeatureSwitch.md)**  

-   **[Managing Customization Projects by Using the Web API](../CustomizationPlatform/CustomizationProjects_WebAPI_Mapref.md)**  

-   **[Managing Customization Projects by Using the PXCommandLine Tool](../CustomizationPlatform/CustomizationProjects_PXCommandLineTool_Mapref.md)**  


