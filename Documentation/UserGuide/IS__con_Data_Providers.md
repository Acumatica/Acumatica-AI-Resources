# Data Providers {#_32b4f7df-08bf-4148-829e-3e08f4d945f6 .concept}

You create data providers on the [Data Providers](SM_20_60_15.md) \(SM206015\) form. To create a provider, you specify its name and type, the access parameters to the source, and the data schema.

## Data Provider Types {#_cf685b13-5eac-4de2-b700-759db25a63a2 .section}

Excel spreadsheets or files in CSV format are generally used for data exchange between different ERP products, because most ERP products support exporting and importing data in these formats. Besides using files in an external format as a data source, you can import data from or export data to an external application directly. For example, you can connect to a Microsoft SQL Server and download data from it or upload data to it.

Acumatica ERP provides a number of built-in types of data providers through which the application can efficiently import data from external files or third-party software to Acumatica ERP, or export data from Acumatica ERP to external destinations. These types of data providers, which you use when you configure a provider on the [Data Providers](SM_20_60_15.md) form, are listed below:

-   File providers that you use to access data in external files:
    -   *CSV Provider* \(PX.DataSync.CSVSYProvider\): For import from and export to files in CSV format
    -   *Excel Provider* \(PX.DataSync.ExcelSYProvider\): For import from and export to Excel spreadsheets
    -   *Excel Provider with Data Types* \(PX.DataSync.ExcelDependsDataTypesSYProvider\): For export to Excel spreadsheets of data of different formats
    -   *XML Provider* \(PX.DataSync.XMLSYProvider\): For import from and export to files in XML format
-   Providers that are preconfigured for importing data from and exporting data to external systems:
    -   *Salesforce Provider* \(PX.DataSync.SFSYProvider\): For import from and export to SalesForce CRM by using the Simple Object Access Protocol \(SOAP\).
    -   *Salesforce Sync Provider* \(PX.Salesforce.SalesforceProvider\): For real-time synchronization of data between Acumatica ERP and Salesforce. For details, see [Setting Up Synchronization with Salesforce](SF_00_00_00.md).
    -   *MS SQL Provider* \(PX.DataSync.MSSqlSYProvider\): For import from and export to Microsoft SQL Server.
    -   *HubSpot Provider* \(PX.DataSync.HubSpot.HSSYProvider\): For exporting leads to HubSpot for nurturing and importing leads to Acumatica ERP for processing. You can find more information in [Integration with HubSpot: General Information](../ImplementationGuide/config_HubSpot_GeneralInfo.md).
    -   *HubSpot Enhanced* \(PX.DataSync.HubSpot.HubSpotProvider\): For synchronization of data between Acumatica ERP and HubSpot. This data provider supports the use of the OAuth protocol for authorization in HubSpot. For details, see [Integration with HubSpot: Enhanced HubSpot Data Provider](../ImplementationGuide/config_HubSpot_Enhanced_Provider.md).
-   Providers for exporting payment data to external payment systems:
    -   *ACH Provider* \(PX.DataSync.ACHProvider\): For exporting data for processing in the Automated Clearing House \(ACH\) system. You can find more information in [Processing ACH Payments](AP__con_ACH_Payment_Support.md#).
    -   *ACH Download Provider* \(PX.DataSync.ACHPDownloadrovider\): For exporting data for processing in the Automated Clearing House \(ACH\) system, with the ability to create prenotes.
    -   *Giro Payment Provider* \(PX.DataSync.Banks.GIROPaymentProvider\): For exporting data for processing in giro-based payment systems.
    -   *CPA 005 Provider* \(PX.Objects.Localizations.CA.DataSync.CPA005ExportProvider\): For exporting data for processing in the Electronic Funds Transfer \(EFT\) system \(used in the Canadian localization\).
-   *Business Process Provider* \(PX.DataSync.BusinessProcessSYProvider\): For business process monitoring in Acumatica ERP. You generally do not create data providers of this type manually. The system creates providers of this type automatically when you click **Create Subscriber** &gt; **Import Scenario** on the table toolbar of the **Subscribers** tab of the [Business Events](SM_30_20_50.md) \(SM302050\) form. For details, see [Business Events: Subscribers](SA_Using_Business_Events_Subscribers_Concept.md).
-   Provider for importing data from generic inquiries: PX.DataSync.GenericInquirySYDataProvider: The data provider type to use Generic inquiry as data provider for import scenario.

**Tip:** The *Tax Provider*, *Tax Provider CSV*, and *Tax Zip Provider* built-in types are obsolete. They were used to import data from the Avalara data files, but Avalara no longer supplies these files. Integration with Avalara is done through the Avalara AvaTax SOAP API.

To import data from other sources, you need to create a custom data provider by using the API provided by Acumatica ERP.

## Provider Parameters {#_3a80b719-dd25-4324-82d1-f42f988fbb04 .section}

To define a particular data source to be used for import or export, you define the parameters of the data provider on the [Data Providers](SM_20_60_15.md) \(SM206015\) form. The set of parameters depends on the data provider type, as described below:

-   **Parameters of file providers:** File providers generally have a simple set of parameters that specify the file properties necessary for accessing data in the file. Each of the file providers has the *FileName* parameter, which specifies the path to the file that should be used for data import or export. The path to the file is set automatically after you have uploaded an external file to the provider. The *FileName* parameter displays the path to the uploaded file in the internal format: `Data Providers (<Data Provider Name>)\<File Name>`, where `<Data Provider Name>` and `<File Name>` are replaced with the corresponding values.

    Other parameters of a file provider depend on the provider type. You should specify these parameters so the system can correctly open the file and process the contents of the file.

-   **Parameters of providers that connect to external data systems:** For providers that connect to external data systems, such as SalesForce or MS SQL provider, you specify a set of parameters for connecting Acumatica ERP to the external system. Each of these providers has a parameter that you use to specify the location of the remote resource. This parameter is either the URL of a remote service or the path to a local server.

    Other parameters are specific to each provider type. These parameters are necessary for authentication on the remote resource.


## External Data Schema {#_92ffbeb4-6154-4f16-9ac1-7505b6051193 .section}

Data that you are going to transfer between an external data source and Acumatica ERP usually has a table structure. That is, the data includes a number of data records, and each record has a list of parameters specified.

You specify the structure of an external data source for a data provider by defining the external data schema—that is, you specify the objects and fields of the data source. The object is usually the whole data source or a part of the data source that corresponds to a complete data table. For example, for an Excel file, objects correspond to spreadsheets. For the source objects that should be used for import or export, you should select the **Active** check box in the **Source Objects** table on the **Schema** tab of the [Data Providers](SM_20_60_15.md) \(SM206015\) form.

Source fields are defined by the list of attributes that are specified for each record. For an Excel file, source fields correspond to columns on a spreadsheet. For each field you want to use the field in a scenario, you should select the **Active** check box in the **Source Fields** table on the **Schema** tab of the [Data Providers](SM_20_60_15.md) form.

## Data Provider Creation {#_ade34784-8d89-421d-807d-38f1db4f3e65 .section}

You create data providers on the [Data Providers](SM_20_60_15.md) form. The process of creating a data provider consists of the following general steps:

1.  **Reviewing the structure of external data**

    Before you create the data provider, you review the external source to identify the needed provider type and the external data schema. If you are going to import data to Acumatica ERP, you review the source data to determine the needed provider type, to check that the data meets the requirements, and to see the external data schema. If you are going to export data from Acumatica ERP, you review the data schema in the target file or application to which you want to export the Acumatica ERP data, or create a file to hold the data to be exported and provide field names matching the intended use of the data.

2.  **Creating a provider and setting its type**

    On the [Data Providers](SM_20_60_15.md) form, you create the data provider. You specify the name of the provider, which usually describes the data you will transfer by using this provider. You also select the needed type of the provider. You can use built-in provider types or develop a custom data provider type.

3.  **Specifying the provider parameters**

    On the **Parameters** tab of the [Data Providers](SM_20_60_15.md) form, you specify the particular data source. You attach a file or specify the location of the remote source. You also specify the source-dependent parameters, if necessary.

4.  **Filling in the source objects and fields of the provider**

    On the **Schema** tab of the [Data Providers](SM_20_60_15.md) form, you fill in objects and fields from the attached file or remote resource to the data provider.


After that, the data provider is ready and can be edited as needed. For a file provider, you can upload the new version of an attached file and then update source objects and fields. For a provider connected to a remote system, you can reload the data schema from the server if you make any changes.

**Parent topic:**[Preparing Data for Import and Export by Using Scenarios](../UserGuide/IS__mng_Data_Providers.md)

