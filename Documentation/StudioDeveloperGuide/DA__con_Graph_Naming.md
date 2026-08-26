# Graph Naming {#_100693b9-cf45-47aa-a653-24e03f7a93e8 .concept}

When you are creating a business logic controller \(graph\), the graph name should be specified according to the rules described in the following sections.

## Graph Name Structure and Requirements { .section}

The graph name should have the following structure: `<Prefix><ShortDescription><Suffix>`. Graph prefixes and suffixes are described in greater detail in the sections below.

A graph name should meet the following requirements:

-   The length of a graph name, including all namespaces, should not exceed 255 symbols.
-   A graph name can contain only English letters.

## Graph Prefixes {#section_cyz_htl_p4b .section}

A graph name should begin with a prefix that describes the functional area of the system in which the screen fits logically.

The prefixes to be used for naming graphs are listed in the table below. The third column includes any applicable usage notes.

Prefixes that are labeled as having the *System features* usage are restricted based on whether the corresponding feature is \(or features are\) enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form for the instance.

Prefixes that are labeled as having the *Internal* usage are reserved for internal use only and should not be used for custom forms.

For a custom functional area, customizers can introduce their own prefix which should not coincide with prefixes listed below.

|Prefix|Functional Area|Usage|
|------|---------------|-----|
|`AM`|Manufacturing|System feature|
|`AP`|Accounts payable|System feature|
|`AR`|Accounts receivable|System feature|
|`AU`|Automation|System feature|
|`BB`|Business-to-business ordering|System feature|
|`BC`|Commerce|System feature|
|`CA`|Financials|System feature|
|`CA`|Cash management|System feature|
|`CM`|Currency management|System feature|
|`CO`|Emails|System feature|
|`CR`|CRM|System feature|
|`CS`|Configuration|System feature|
|`CT`|Contract management|System feature|
|`DB`|Dashboards|System feature|
|`DC`|Data consistency monitor|Internal|
|`DR`|Deferred revenue|System feature|
|`EP`|Employee management|System feature|
|`EQ`|Equipment management|System feature|
|`FA`|Fixed assets|System feature|
|`FN`|Financials|System feature|
|`FP`|Portal financials|System feature|
|`FS`|Field services|System feature|
|`GD`|GDPR|System feature|
|`GI`|Generic inquiries|System feature|
|`GL`|General ledger|System feature|
|`HS`|Hubspot integration|System feature|
|`IN`|Distribution|System feature|
|`IS`|ISV|Internal|
|`OU`|CRM|System feature|
|`OU`|Outlook integration|System feature|
|`PC`|Procore integration|System feature|
|`PI`|Procore integration|System feature|
|`PJ`|Construction|System feature|
|`PM`|Project|System feature|
|`PO`|Purchase orders|System feature|
|`PR`|Payroll|System feature|
|`PS`|Provisioning|Internal|
|`RM`|ARM reports|System feature|
|`RQ`|Distribution|System feature|
|`RQ`|Requisitions|System feature|
|`RT`|Route management|System feature|
|`SC`|Construction|System feature|
|`SE`|Search|System feature|
|`SF`|Salesforce integration|System feature|
|`SM`|System management|System feature|
|`SO`|Sales orders|System feature|
|`SP`|Customer portal|System feature|
|`TX`|Taxes|System feature|
|`UN`|Education|Internal|
|`WI`|Wiki|System feature|
|`WS`|Setup wizard \(obsolete\)|System feature|

## Graph Suffixes { .section}

You should use the following suffixes in the names of the graphs, depending on the types of the forms they are used for:

-   `Maint`: You use this suffix for the graphs for maintenance forms, which are helper forms used for the input of data on the data entry and processing forms, and for the graphs for the setup forms where administrative users specify the configuration settings for the application. For example, `CountryMaint` could be the name of the graph for the Countries maintenance form, which provides the ability to edit the list of countries.
-   `Entry`: You use this suffix for the graphs for data entry forms, which are used for the input of business documents. For example, `SalesOrdersEntry` could be the name of the graph for the Sales Order data entry form, which provides the basic functionality for entering and working with sales orders.
-   `Inq`: You use this suffix for the graphs for inquiry forms, which display a list of data records selected by the specified filter. For example, `SalesOrderInq` could be the name of the graph for the inquiry form named Sales Order Inquiry, which provides the list of sales order documents for the specified customer.
-   `Process`: You use this suffix for the graphs for processing forms, which provide mass processing operations. For example, `SalesOrderProcess` could be the name of the graph for the Approve Sales Orders processing form, which provides mass approval of sales orders.

## Examples {#section_b33_2gm_p4b .section}

The following examples illustrate the use of these graph naming conventions:

-   For the graph name `POOrderEntry`: `PO` indicates purchase orders, `Order` is a short description, and `Entry` indicates the data entry form type.
-   For the graph name `CSAttributeMaint`: `CS` indicates configuration, `Attribute` is a short description, and `Maint` indicates the maintenance form type.

**Parent topic:**[Naming the Graphs and Event Handlers](../StudioDeveloperGuide/DA__mng_Code_Guidelines.md)

