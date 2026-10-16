# DAC-Based OData: General Information

In your browser or in another application that works with OData, you can use the data access class \(DAC\)-based OData interface to view Acumatica ERP data in your browser or another OData-compatible application—pulling data straight from DACs without intermediate steps. This interface supports the [OData Version 4.0](https://www.odata.org/documentation/) protocol.

## Learning Objectives

-   Sign in to Acumatica ERP to use the OData interface
-   Access data that’s exposed through the DAC-based OData interface
-   Configure Cross-Origin Resource Sharing \(CORS\) to access data through client-side web applications

## Applicable Scenarios

-   You’re a technical specialist with your company and your responsibilities include the management of reports and inquiries. An accountant or other employee has requested access to Acumatica ERP data through a third-party OData client, such as Microsoft Excel, Microsoft Power BI, or a Java-based application.
-   You’re a developer creating an integration application that needs to retrieve data from Acumatica ERP.

## Access to DAC Records Through an OData Client

You can expose data from Acumatica ERP—in this case, records from DACs—through the OData interface. With this data, users can perform detailed financial analysis by using third-party OData clients, such as Microsoft Excel and Microsoft Power BI.

The DAC-based OData interface uses the basic authentication in Acumatica ERP. That is, you need to sign in with a username and password to Acumatica ERP before you request the data through the OData protocol. To connect to your data, you specify the URL of the DAC-based OData endpoint of your Acumatica ERP instance to the OData client and authenticate yourself by entering your Acumatica ERP credentials. The OData client then connects to your Acumatica ERP instance and obtains the data for you.

To view the data in your browser, you enter the OData interface URL in the address bar and then sign in with your Acumatica ERP username and password. When your identity has been confirmed, the system displays the requested data.

**Tip:** When the system calculates the number of signed-in users, it treats the basic authentication used for OData as a sign-in of a conventional user \(not an API session\). The license restriction for conventional users is shown in the **Concurrent Users** box on the **License and Constraints** tab of the [License Monitoring Console](../Shared/../UserGuide/SM_60_40_00.md) \(SM604000\) form.

The OData client can use the OAuth 2.0 authorization instead of direct authentication with a username and password. For details about OAuth 2.0 authorization, see [Authorizing Client Applications to Work with Acumatica ERP](../IntegrationDevelopmentGuide/IS__mng_Authorizing_with_OAuth2.md).

## The URL for the DAC-Based OData Interface

The URL for the DAC-based OData interface is *&lt;Acumatica ERP instance URL&gt;/t/&lt;TenantName&gt;/api/odata/dac*. In this URL, *&lt;TenantName&gt;* is the login name of the tenant in the Acumatica ERP instance. \(For more information on single-tenant and multitenant configuration, see [Tenants: General Information](SA_Managing_Tenants_Using_Web_GeneralInfo.md).\) A request to this URL returns the list of all DACs in the tenant.

**Attention:** Through the DAC-based OData interface, users have access to the same data that’s visible to them in the UI based on their access rights.

For example, you would specify the *https://sweetlife.com/erp/t/Calipso LLC/api/odata/dac* URL if:

-   The URL of the Acumatica ERP instance is *https://sweetlife.com/erp*.
-   The instance contains the *Calipso LLC* tenant.
-   You want to obtain the list of DACs in this tenant.

If you type this sample URL into a browser, you’ll notice that the browser automatically replaces the space with *%20*.

**Tip:** You can find the login names of tenants in the **Login Name** column on the [Tenant List](../Shared/../UserGuide/SM_20_35_30.md) \(SM203530\) form, as shown below.


You can also find the login name of the tenant to which you’re signed in on the User menu \(shown below\), which you access by clicking the User menu button on the top pane.


The following code fragment shows a list of DACs; the list has been retrieved through the OData interface.

```json
{
  "@odata.context": 
    "<Acumatica ERP instance URL>/t/<TenantName>/api/odata/dac/$metadata",
  "value": [
    {
      "name": "PX_Api_Mobile_Workspaces_MobileSiteMapWorkspaces",
      "kind": "EntitySet",
      "url": "PX_Api_Mobile_Workspaces_MobileSiteMapWorkspaces"
    },
    {
      "name": "PX_Api_SYMapping",
      "kind": "EntitySet",
      "url": "PX_Api_SYMapping"
    },
    {
      "name": "Mapping",
      "kind": "EntitySet",
      "url": "Mapping"
    },
    ...
  ]
}
```

## Retrieval of a Tenant’s Full Set of Metadata

You can use the following request to get the metadata of a tenant of an Acumatica ERP instance.

```
GET https://<Acumatica ERP instance URL>/t/<TenantName>/api/odata/dac/$metadata 
```

The metadata includes the following data:

-   **The full list of DACs**. For each DAC, the `EntityType` tag contains the name of the DAC.
-   **The fields of the DACs and the fields' types**. You can find the list of fields of the DAC in the `Property` tags nested in the `EntityType` tag.
-   **The related DACs**, which are defined by the `NavigationProperty` tags nested in the `EntityType` tag.

    The navigation properties whose name is in the `<detail_entity_type>Collection` format refer to detail entities. The navigation properties with the name in the `<related_entity_type>By<entity_field>` format refer to related entities.

    For example, the definition of the `PX.Objects.SO.SOOrder` DAC has the `SOLineCollection` navigation property, which states that the `PX.Objects.SO.SOLine` DAC is a detail entity. The definition of the `PX.Objects.SO.SOOrder` DAC also has the `BAccountByCustomerID` navigation property, which links the `CustomerID` field of the `PX.Objects.SO.SOOrder` DAC with the `BAccountID` field of the `PX.Objects.CR.BAccount` DAC.

-   **The display names of DACs and fields**. The `Org.OData.Core.V1.Description` annotation in an `EntityType` tag contains the display name of the DAC, and the same annotation in a `Property` tag contains the display name of the field. You can show the display names in your user interface.
-   **The fields that cannot be used in the _$filter_ or _$select_ query parameters**. For a DAC with field-level restrictions, the `Cap.FilterRestrictions` annotation contains a `NonFilterableProperties` collection. In the DAC-based OData interface, each field in this collection is treated as both non-filterable and non-selectable. If the `Cap.FilterRestrictions` annotation contains `<PropertyValue Property="Filterable" Bool="false"/>`, fields declared in the DAC can’t be used in the *$filter* or *$select* query parameters. This restriction does not apply to fields inherited from a base DAC.

You use the DAC names and fields from the metadata to retrieve the data from Acumatica ERP, as described in [DAC-Based OData: Basic Data Retrieval](RPT_DAC_OData_DataRetrieval.md).

## Support of the OData Specification

The OData protocol provided by Acumatica ERP for the retrieval of data access classes \(DACs\) doesn’t support aggregation functions. These functions are defined in the OData Version 4.0 standard extension \(see [OData Extension for Data Aggregation Version 4.0](http://docs.oasis-open.org/odata/odata-data-aggregation-ext/v4.0/odata-data-aggregation-ext-v4.0.html)\).

## Configuration of CORS

Acumatica ERP supports Cross-Origin Resource Sharing \(CORS\), meaning that requests for resources can come from a different domain than that of the resource making the request. With CORS enabled, you can allow access to your Acumatica ERP OData endpoints for client-side web applications, including Java-based applications. For more information about CORS, see [Cross-Origin Resource Sharing](http://www.w3.org/TR/cors/) on the World Wide Web Consortium portal.

The CORS settings of the web server of your instance are defined by the `cors` section of the `Web.config` file; see the following example of the default configuration for this section.

```xml
<cors enabled="true" origins="*" methods="*" headers="*" 
exposedHeaders="DataServiceVersion,MaxDataServiceVersion,OData-Version,
OData-MaxVersion" />
```

By default, CORS is enabled, all origins are allowed access to the server, and all supported headers are exposed and available for use. The web server of the application supports simple headers as well as the following headers: `DataServiceVersion`, `MaxDataServiceVersion`, `OData-Version`, and `OData-MaxVersion`. You need to use these four headers to access OData endpoints.

You can enforce limitations on cross-origin requests by changing the settings in the `Web.config` file. You can add your own headers as well. For details, see [To Configure CORS](../Shared/../UserGuide/CU__how_Odata_CORS.md).

**Parent topic:**[Accessing DACs Through OData](../UserGuide/RPT_DAC_OData_Mapref.md)

