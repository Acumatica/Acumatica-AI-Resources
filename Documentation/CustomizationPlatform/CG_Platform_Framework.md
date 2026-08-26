# Customization Framework {#_8a86d98c-2852-447b-8dc2-1ab3a80f12a6 .concept}

The programming framework of the Acumatica Customization Platform, like Acumatica Framework, is intended for developers experienced in C\#.NET. Because the application objects of Acumatica ERP are built on top of Acumatica Framework, the developers need to learn both the programming frameworks to be able to effectively develop quality customizations.

When you have to customize an instance of Acumatica ERP, first you must determine the scope of the customization. For each form that works with data from the database, the instance of Acumatica ERP must contain at least the following objects \(see the diagram below\):

-   An HTML and TypeScript file or an ASPX page.
-   A business logic controller \(BLC, also referred to as *graph*\): The graph must be specified in the `TypeName` property of the data source control of the page. The graph must contain at least one data view, which is specified in the `PrimaryView` property of the data source control as well as in the `DataMember` property of the control container. The graph instance is created on each round trip and initializes the creation of the data view instance based on a BQL statement. The data view provides data manipulations and data flows between the container control, the cache object of the graph, and the corresponding table of the database. The BQL statement contains a reference to at least one data access class that is required to map the database table to data records in the cache object.
-   A data access class \(DAC\): On each round trip, the DAC instance is created in the cache object when the data view processes any operation with the corresponding data.
-   A table in the database: The table is mapped to the data access class that defines the data record type in the cache object of the graph instance.

By using the Acumatica Customization Platform, you can create or customize each of the object types listed above.

## Customization of ASPX Pages { .section}

To change the layout and behavior of an Acumatica ERP form, you must customize the corresponding ASPX page. However for customizing an ASPX page, the platform uses an approach that does not require you to change the original ASPX code of the Acumatica ERP form. Instead, the platform can apply the `.aspx` file with the same name from a special subfolder within the website folder, if this file exists. At run time, while the platform is processing a request to open a form, the platform first tries to find the needed `.aspx` file inside this subfolder to use it instead of the original file. If the file with customized ASPX code is found, the platform opens the customized form. Otherwise, the original form is opened.

To cancel a customization of a page, you need only to delete the file with the appropriate name from the subfolder.

## Customization of Application Classes \(BLCs and DACs\) { .section}

To provide the ability to customize the functionality or business logic of a form, the platform uses the technology based on class extensions. With this technology, to customize a BLC or DAC, the platform does not change the original code of Acumatica ERP. Instead, the platform uses an additional C\# file for each class extension.

At run time, the platform automatically detects a class extension during the first initialization of the base \(original\) class. If an extension is found, the platform replaces the base class with the merged result of the base class and the extension that was found.

To cancel a customization of business logic, you need only to delete the file that contains the appropriate class extension.

This approach makes it easy to apply and cancel any customization of business logic in Acumatica ERP.

## Customization of the Database Schema { .section}

The platform provides the following capabilities that you can use to customize the database schema:

-   You can create an [SQL script](CG_GL_DBSchema_CustomColumns.md#) to execute while the customization is applied to an instance of Acumatica ERP.
-   You can create a custom bound field to add the corresponding column to a table while the customization is applied to an instance of Acumatica ERP.
-   You can define the `UpdateDatabase()` method of a class derived from the CustomizationPlugin class to execute an SQL script or a stored procedure from the C\# code after the customization is applied to an instance of Acumatica ERP. \(See [Custom Processes During Publication of a Customization](CG_Platform_Framework_PlugIn.md) for details.\)

-   **[Changes in Webpages \(ASPX\)](../CustomizationPlatform/CG_Platform_Framework_ASPX.md)**  

-   **[Changes in the Application Code \(C\#\)](../CustomizationPlatform/CG_Platform_Framework_CS.md)**  

-   **[Changes in the Database Schema](../CustomizationPlatform/CG_Platform_Framework_DBSchema.md)**  

-   **[Custom Processes During Publication of a Customization](../CustomizationPlatform/CG_Platform_Framework_PlugIn.md)**  


**Parent topic:**[Acumatica Customization Platform](../CustomizationPlatform/CG_Platform.md)

