# Run-Time Compilation {#_0f4b53d4-118b-403a-8a5b-076d35713e72 .concept}

If you have created an extension for a business logic controller or a data access class in a customization project, during the project publication, the Acumatica Customization Platform stores the code of the class extension in a `.cs` file within the `App_RuntimeCode` folder of the website.

At run time, the platform compiles the code in a separate library that is dynamically merged with the original classes. Run-time compilation is used by default for the code of the *DAC* and *Code* project items. \(See [Types of Items in a Customization Project](CG_Platform_Project_ItemTypes.md) for details.\)

Publication of a customization updates the files in the `App_RuntimeCode` folder of the website. Unlike when the `Bin` folder is updated, update of files in the `App_RuntimeCode` folder doesn't cause the application domain to restart. \(See [Project Publication: General Information](CustomizationProjects_PublishingProjects_GeneralInfo.md) for details.\)

**Parent topic:**[Changes in the Application Code \(C\#\)](../CustomizationPlatform/CG_Platform_Framework_CS.md)

