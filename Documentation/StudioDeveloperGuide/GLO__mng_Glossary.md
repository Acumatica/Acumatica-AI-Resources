# Glossary

The following table contains definitions of the basic terms used in Acumatica Framework.

<table id="table_kxq_lr2_gk"><tbody><tr><td>

**Term**

</td><td>

**Definition**

</td></tr><tr><td>

**Action**

</td><td>

An interface for executing a specific operation with data that is implemented in a graph. An action is represented by the corresponding button on the user interface.

</td></tr><tr><td>

**Acumatica Cloud xRP Platform**

</td><td>

The platform for the development of cloud ERP applications \(such as Acumatica ERP and customizations of it\), the mobile application for Acumatica ERP, and applications integrated with Acumatica ERP by means of the web services API.

</td></tr><tr><td>

**Acumatica Customization Platform**

</td><td>

The part of the Acumatica Cloud xRP Platform that provides customization tools for the development of applications embedded in Acumatica ERP \(also called customizations of Acumatica ERP\).

</td></tr><tr><td>

**Acumatica Framework**

</td><td>

The part of the Acumatica Cloud xRP Platform that provides the platform API and web controls for building ERP applications.

</td></tr><tr><td>

**Acumatica Framework-based application**

</td><td>

An application created by means of Acumatica Framework tools.

</td></tr><tr><td>

**Analytical report**

</td><td>

A report created with the Analytical Report Manager. For details on this tool, see [Analytical Report Manager](../UserGuide/CS__ARM_Analytical_Report_Parameters.md).

</td></tr><tr><td>

**Bound field**

</td><td>

A data field that represents a column from a database table. Compare to **Unbound field**.

</td></tr><tr><td>

**BQL statement**

</td><td>

A generic BQL class specialization that represents a specific query to the database. The type parameters specified in the BQL statement are BQL operator classes and DACs.

</td></tr><tr><td>

**Business logic controller** \(**BLC**\)

</td><td>

See **Graph**.

</td></tr><tr><td>

**Business query language** \(**BQL**\)

</td><td>

A set of generic classes for querying data records from the database.

</td></tr><tr><td>

**Cache**

</td><td>

A collection of modified data records from the same table stored in the user session and shared between requests.

</td></tr><tr><td>

**Custom report**

</td><td>

A report created on the custom report form.

</td></tr><tr><td>

**Customization of Acumatica ERP**

</td><td>

A modification of the user interface, business logic, and the database scheme without recompilation and reinstallation of Acumatica ERP. This modification is packed in a customization project.

</td></tr><tr><td>

**Customization project**

</td><td>

A container that holds the changes you have made during a particular customization of Acumatica ERP.

</td></tr><tr><td>

**DAC field**

</td><td>

See **Field**.

</td></tr><tr><td>

**Data access class** \(**DAC**\)

</td><td>

A class that represents a database table.

</td></tr><tr><td>

**Data entry form**

</td><td>

A form that is used for the input of business documents.

</td></tr><tr><td>

**Data member**

</td><td>

A data view specified as the data source for a container of UI controls \(a form, a tab, or a grid\).

</td></tr><tr><td>

**Data record**

</td><td>

A specific record retrieved from the database or created in code and wrapped in a DAC instance.

</td></tr><tr><td>

**Data view**

</td><td>

A BQL statement that the graph uses to access and manipulate data. A developer defines a data view in code by using [PXSelect](AD__con_BQL_PXSelect.md#) classes.

</td></tr><tr><td>

**Datasource control**

</td><td>

A service control on an ASPX page that is used to bind the ASPX page to a particular graph. This control represents the form toolbar, which contains action buttons.

</td></tr><tr><td>

**Embedded application**

</td><td>

See **Customization of Acumatica ERP**.

</td></tr><tr><td>

**Event**

</td><td>

A way to provide notifications from Acumatica Framework to the application. Most business logic is implemented in event handlers.

</td></tr><tr><td>

**Event handler**

</td><td>

A method that is invoked by Acumatica Framework when the corresponding event is raised.

</td></tr><tr><td>

**Field \(DAC field\)**

</td><td>

A part of the DAC definition that typically represents a database column. A DAC field consists of an abstract class that is used to refer to the field in BQL and a property holding the actual field value.

</td></tr><tr><td>

**Form**

</td><td>

An application page that provides the UI and business logic of the application. Each form used in the application consists of a declarative ASPX page and the business logic defined for this form in the corresponding graph.

</td></tr><tr><td>

**Graph**

</td><td>

A stateless controller class that is intended for the execution of business logic on a particular application form. A graph \(also called a *business logic controller*\) is derived from the PXGraph generic class.

</td></tr><tr><td>

**Inquiry form**

</td><td>

A form that displays a list of data records selected by the specified filter.

</td></tr><tr><td>

**Integrated application**

</td><td>

A third-party application integrated with Acumatica ERP by means of web services API.

</td></tr><tr><td>

**Maintenance form**

</td><td>

A helper form that is used for the input of data on the data entry and processing forms.

</td></tr><tr><td>

**Mobile API**

</td><td>

The API that is used for customization of the Acumatica mobile application. For a description of the API, see [Mobile Site Map Reference](MOBILE_Reference.md).

</td></tr><tr><td>

**Multitenant application**

</td><td>

An application in which multiple tenants use the same Acumatica Framework-based application. For each tenant, the website looks identical and provides the same business logic. However, each tenant has exclusive access to the tenant's individual data and can have restricted access to the data of other tenants.

</td></tr><tr><td>

**Platform API**

</td><td>

The API that is used to develop Acumatica Framework-based applications and customizations of Acumatica ERP.

</td></tr><tr><td>

**Primary graph**

</td><td>

The graph that corresponds to the default editing form of the data record. This graph is specified in the [PXPrimaryGraph](https://help.acumatica.com/(W(43))/Help?ScreenId=ShowWiki&pageid=842ed8f6-e659-45ef-3083-6696cf1fecaf) attribute.

</td></tr><tr><td>

**Primary DAC**

</td><td>

The first data access class specified in a BQL statement.

</td></tr><tr><td>

**Primary data view**

</td><td>

The first data view defined in a business logic controller.

</td></tr><tr><td>

**Processing form**

</td><td>

A form that provides mass processing operations.

</td></tr><tr><td>

**Report Designer**

</td><td>

A visual editor for creating report forms and printable pages.

</td></tr><tr><td>

**Report form**

</td><td>

An RPX page created in Report Designer that defines the form used for generating reports in the application.

</td></tr><tr><td>

**Screen**

</td><td>

See **Form**.

</td></tr><tr><td>

**Setup form**

</td><td>

A form that provides the configuration parameters for the application.

</td></tr><tr><td>

**Unbound field**

</td><td>

A data field that exists only on the model level in a DAC definition, and that is not bound to a column of the database table. Compare to **Bound field**.

</td></tr><tr><td>

**Webpage**

</td><td>

See **Form**.

</td></tr><tr><td>

**Web services API**

</td><td>

The API for development of applications integrated with Acumatica ERP through SOAP or REST.

</td></tr></tbody>
</table>

