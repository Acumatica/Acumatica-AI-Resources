# Custom Processes During Publication of a Customization {#_3ef5784b-1602-4a04-b6b9-52b69c79fe91 .concept}

The platform provides you the ability to execute custom processes within the instance of Acumatica ERP at the following times during the publication of a customization project:

-   After website files are updated but before the website is restarted
-   After the customization has been published and the website is restarted

To implement such processes, you can create a class derived from the CustomizationPlugin class, further referred to as the *customization plug-in*, and override one or both of the following methods, which can be invoked at the end of the publication process:

-   The `OnPublished()` method is executed right after website files are updated but before the website are restarted. This method is invoked only if run-time compilation is enabled. In a cluster environment, the method is invoked on each cluster node. By using this method, you can update any files within the website except the customization code files located in the `/Bin` folder. For example, you can set up your own UI styles and skins or log-in images.
-   The `UpdateDatabase()` method is executed after the customization is published and the website is restarted. In this method, for example, you can already manipulate data in the database by using the business logic implemented in the customization. For example, you can develop source code to import data by using a scenario included in the customization.

In a customization project, you can include multiple classes derived from the CustomizationPlugin class.

**Tip:** The platform does not provide you the ability to set the order of execution of customization plug-ins in a published customization.

For details about how to create a class derived from the CustomizationPlugin class, see [To Add a Customization Plug-In to a Project](CG_GL_Items_Code_AddingPlugIn.md).

**Parent topic:**[Customization Framework](../CustomizationPlatform/CG_Platform_Framework.md)

