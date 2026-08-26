# Glossary {#_3eb31485-1a98-4374-a87c-8b60e826c236 .concept}

The following table contains definitions of the basic terms used in Acumatica Customization Platform.

|Term|Definition|
|----|----------|
|**Acumatica mobile application**|The native mobile client applications Acumatica provides from App Store and Google Play for iOS and Android devices respectively.|
|**_Administrator_ role**|A user account role assigned to specialists involved with system administration. This role can assign the *Customizer* role to the needed users by using the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form.|
|**Attributes** of a business entity in Acumatica ERP|Data records that contain specific information defined for a particular class, which is a grouping of entities—such as leads, opportunities, customers, cases, projects, and stock and non-stock items—that have similar properties.|
|**BLC**|See **_Business logic controller_**.|
|**Bound data field**|A field for which the value is stored in the database.|
|**Business logic controller** \(BLC, also referred to as *graph*\)|A class that provides business logic for a form of Acumatica ERP.|
|**Code Editor**|A tool of the Customization Project Editor that is designed to edit and manage the customization code added to the customization project. For more information, see [Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md).|
|**Customization project**|A set of changes and additional files that modifies Acumatica ERP or an Acumatica Framework-based application.|
|**Customization task**|A set of custom requirements to be implemented in Acumatica ERP.|
|**Customization Project Editor \(Project Editor\)**|A tool of Acumatica ERP that is designed to manage a customization project. For more information, see [Customization Project Editor](../UserGuide/SM_20_45_10.md).|
|**_Customizer_ role**|A user account role assigned to the specialists that can use the customization tools and facilities of the Acumatica Customization Platform, and upload and publish customization projects.|
|**DAC**|See **_data access class_**.|
|**Data access class** \(DAC\)|A class that contains field declarations and provides an abstract interface used for mapping C\# objects to the database schema.|
|**Data Class Editor**|A tool of the Project Editor that is designed to customize data access classes. For more information, see [Data Class](../UserGuide/AU_DataClassEditor.md).|
|**Deployment package**|A redistributable `.zip` file that includes the full content of a customization project. The deployment package consists of the `project.xml` file and the custom files that you could have added to the project, such as external assemblies.|
|**Development environment**|Your local environment in which you solve a customization task.|
|**Extension class**|A class that contains the customization code for an original \(base\) class of Acumatica ERP. At run time, during the first initialization of a base class, the system automatically discovers an extension for the class and applies the customization by replacing the base class with the merged result of the base class and the discovered extension.|
|**Extension class for a business logic controller**|A class that contains the customization code for an original business logic controller of Acumatica ERP. An extension class for a business logic controller is derived from the PXGraphExtension&lt;T&gt; generic class.|
|**Extension class for a data access class**|A class that contains the customization code for an original data access class of Acumatica ERP. An extension class for a data access class is derived from the PXCacheExtension&lt;T&gt; generic class.|
|**Extension library**|A Microsoft Visual Studio project that is individually developed and tested, and added to the customization project as a DLL.|
|**Generic inquiry**|An inquiry to the database to get the information you want to view.|
|**Import scenario**|A scenario that is a sequence of actions to perform data migration from a legacy application to an instance of Acumatica ERP.|
|**Integration scenario**|An import or export scenario that is a sequence of actions to be executed for a data record to perform data migration between a legacy application and Acumatica ERP.|
|**Screen Editor**|The visual editor for the source code of an `.aspx` page. You can use it to configure ASP.NET containers, such as forms and grids, as well as to set the properties of UI controls. For more information, see [Screen Editor](../UserGuide/AU_20_45_20.md).|
|**Main data access class**|A data access class that is the first type parameter in a data view declaration.|
|**New Screen wizard**|The utility of the Project Editor that is designed to immediately create a workable template for a custom form.|
|**Production environment**|The environment that must be customized for the end users.|
|**Publication of a customization project**|The process of applying the content of the project to the current instance of Acumatica ERP.|
|**Source Code browser**|A tool of the Project Editor that is designed to explore the original source code of Acumatica ERP.|
|**Staging \(or testing\) environment**|The production environment copy in which you will test the solution before applying it to the production environment.|
|**Unbound data field**|A field that is added only to the data access class and is not mapped to the database.|

