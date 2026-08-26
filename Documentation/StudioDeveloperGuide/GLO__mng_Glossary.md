# Glossary {#_f9e20abb-20c0-4df7-b959-7c7307533849 .concept}

The following table contains definitions of the basic terms used in Acumatica Framework.

|**Term**|**Definition**|
|**Action**|An interface for executing a specific operation with data that is implemented in a graph. An action is represented by the corresponding button on the user interface.|
|**Acumatica Cloud xRP Platform**|The platform for the development of cloud ERP applications \(such as Acumatica ERP and customizations of it\), the mobile application for Acumatica ERP, and applications integrated with Acumatica ERP by means of the web services API.|
|**Acumatica Customization Platform**|The part of the Acumatica Cloud xRP Platform that provides customization tools for the development of applications embedded in Acumatica ERP \(also called customizations of Acumatica ERP\).|
|**Acumatica Framework**|The part of the Acumatica Cloud xRP Platform that provides the platform API and web controls for building ERP applications.|
|**Acumatica Framework-based application**|An application created by means of Acumatica Framework tools.|
|**Analytical report**|A report created with the Analytical Report Manager. For details on this tool, see [Analytical Report Manager](../UserGuide/CS__ARM_Analytical_Report_Parameters.md).|
|**Bound field**|A data field that represents a column from a database table. Compare to **Unbound field**.|
|**BQL statement**|A generic BQL class specialization that represents a specific query to the database. The type parameters specified in the BQL statement are BQL operator classes and DACs.|
|**Business logic controller** \(**BLC**\)|See **Graph**.|
|**Business query language** \(**BQL**\)|A set of generic classes for querying data records from the database.|
|**Cache**|A collection of modified data records from the same table stored in the user session and shared between requests.|
|**Custom report**|A report created on the custom report form.|
|**Customization of Acumatica ERP**|A modification of the user interface, business logic, and the database scheme without recompilation and reinstallation of Acumatica ERP. This modification is packed in a customization project.|
|**Customization project**|A container that holds the changes you have made during a particular customization of Acumatica ERP.|
|**DAC field**|See **Field**.|
|**Data access class** \(**DAC**\)|A class that represents a database table.|
|**Data entry form**|A form that is used for the input of business documents.|
|**Data member**|A data view specified as the data source for a container of UI controls \(a form, a tab, or a grid\).|
|**Data record**|A specific record retrieved from the database or created in code and wrapped in a DAC instance.|
|**Data view**|A BQL statement that the graph uses to access and manipulate data. A developer defines a data view in code by using [PXSelect](AD__con_BQL_PXSelect.md#) classes.|
|**Datasource control**|A service control on an ASPX page that is used to bind the ASPX page to a particular graph. This control represents the form toolbar, which contains action buttons.|
|**Embedded application**|See **Customization of Acumatica ERP**.|
|**Event**|A way to provide notifications from Acumatica Framework to the application. Most business logic is implemented in event handlers.|
|**Event handler**|A method that is invoked by Acumatica Framework when the corresponding event is raised.|
|**Field \(DAC field\)**|A part of the DAC definition that typically represents a database column. A DAC field consists of an abstract class that is used to refer to the field in BQL and a property holding the actual field value.|
|**Form**|An application page that provides the UI and business logic of the application. Each form used in the application consists of a declarative ASPX page and the business logic defined for this form in the corresponding graph.|
|**Graph**|A stateless controller class that is intended for the execution of business logic on a particular application form. A graph \(also called a *business logic controller*\) is derived from the PXGraph generic class.|
|**Inquiry form**|A form that displays a list of data records selected by the specified filter.|
|**Integrated application**|A third-party application integrated with Acumatica ERP by means of web services API.|
|**Maintenance form**|A helper form that is used for the input of data on the data entry and processing forms.|
|**Mobile API**|The API that is used for customization of the Acumatica mobile application. For a description of the API, see [Mobile Site Map Reference](MOBILE_Reference.md).|
|**Multitenant application**|An application in which multiple tenants use the same Acumatica Framework-based application. For each tenant, the website looks identical and provides the same business logic. However, each tenant has exclusive access to the tenant's individual data and can have restricted access to the data of other tenants.|
|**Platform API**|The API that is used to develop Acumatica Framework-based applications and customizations of Acumatica ERP.|
|**Primary graph**|The graph that corresponds to the default editing form of the data record. This graph is specified in the [PXPrimaryGraph](https://help.acumatica.com/(W(43))/Help?ScreenId=ShowWiki&pageid=842ed8f6-e659-45ef-3083-6696cf1fecaf) attribute.|
|**Primary DAC**|The first data access class specified in a BQL statement.|
|**Primary data view**|The first data view defined in a business logic controller.|
|**Processing form**|A form that provides mass processing operations.|
|**Report Designer**|A visual editor for creating report forms and printable pages.|
|**Report form**|An RPX page created in Report Designer that defines the form used for generating reports in the application.|
|**Screen**|See **Form**.|
|**Setup form**|A form that provides the configuration parameters for the application.|
|**Unbound field**|A data field that exists only on the model level in a DAC definition, and that is not bound to a column of the database table. Compare to **Bound field**.|
|**Webpage**|See **Form**.|
|**Web services API**|The API for development of applications integrated with Acumatica ERP through SOAP or REST.|

