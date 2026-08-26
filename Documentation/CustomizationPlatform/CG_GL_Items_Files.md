# Custom Files {#_d474f5d8-47a0-42b3-af00-8e0940e32b7f .concept}

You can add to a customization project any custom file located in the website folder of your instance of Acumatica ERP. When you add a file to a project, the Acumatica Customization Platform stores a copy of the file in the database as a *File* item. A *File* item contains the path to the custom file and the GUID of the file content in the file storage of the database. The path is relative to the website folder. The platform then includes a copy of the file from the database in the deployment package.

CAUTION:

You must include in a customization package any custom files that you need to use with your instance of Acumatica ERP and publish this package on this instance. If you instead copy the files to the website folder of your instance of Acumatica ERP manually, the files will be removed while the instance is being updated or upgraded.

You use the [Files](../UserGuide/AU_20_45_00.md) \(AU204500\) page of the [Customization Project Editor](../UserGuide/SM_20_45_10.md) to manage *File* items in the customization project. The page displays the list of *File* items included in the project.

When you publish or export the project, the platform compares each file in the project \(in the database\) with the original file in the file system and detects the files that have been modified in the file system. If a modified file is found, there is a conflict, and the platform gives you the option to update the files in the project or discard the changes \(and use the files from the database\). See [Detecting the Project Items Modified in the File System](CG_Platform_TO_Features_AutoDetectMF.md) for details.

On the [Files](../UserGuide/AU_20_45_00.md) page, you can perform the operations with items described in the following topics:

-   [To Add a Custom File to a Project](CG_GL_Items_Files_Adding.md)
-   [To Update a File Item in a Project](CG_GL_Items_Files_Updating.md)
-   [To Delete a Custom File From a Project](CG_GL_Items_Files_Deleting.md)

**Note:** You can customize *File* items for the Self-Service Portal as well.

-   **[To Add a Custom File to a Project](../CustomizationPlatform/CG_GL_Items_Files_Adding.md)**  

-   **[To Update a File Item in a Project](../CustomizationPlatform/CG_GL_Items_Files_Updating.md)**  

-   **[To Delete a Custom File From a Project](../CustomizationPlatform/CG_GL_Items_Files_Deleting.md)**  


**Parent topic:**[Managing Items in a Project](../CustomizationPlatform/CG_GL_Items.md)

