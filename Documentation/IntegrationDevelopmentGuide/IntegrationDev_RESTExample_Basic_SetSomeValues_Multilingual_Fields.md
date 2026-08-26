# Specify Any Number of Localized Values of a Multilingual Field {#_8932e3ff-e69a-4126-afbd-bbe634019713 .concept}

For some text boxes on Acumatica ERP forms, users can type values in multiple languages if multiple locales are configured in Acumatica ERP. For example, if your Acumatica ERP instance has the English and French locales activated and multilingual user input configured, you can specify the value of the **Description** box on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md#) \(IN202500\) form in English or French.

This topic describes a way to specify any number of localized values of a multilingual field. This is the recommended way to do this, as opposed to the way that allows you to specify only all localized values of a multilingual field at once \(see [Specify All Localized Values of a Multilingual Field](IntegrationDev_RESTExample_Basic_SetValue_Multi-Language_Fields.md)\).

## HTTP Method and URL { .section}

To specify all localized values of a multilingual field of a record that you create or update in Acumatica ERP, you use the `PUT` HTTP method and the following URL.

```
PUT http://<Base endpoint URL>/<Top-level entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to create or update a record.

For example, suppose that you want to create a stock item record in a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to create a record: *http://localhost/AcumaticaDB/entity/Default/25.200.001/StockItem*.

## Parameters { .section}

For information on the request parameters, see [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md) or [Update a Record](IntegrationDev_RESTExample_Basic_Update_Record.md) depending on the operation you are performing \(creation or update of a record\).

## Request Headers { .section}

For information on the request headers, see [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md) or [Update a Record](IntegrationDev_RESTExample_Basic_Update_Record.md) depending on the operation you are performing \(creation or update of a record\).

## Request Body { .section}

In the HTTP body, in the `value` field, you specify the value in the default language \(see [Setting Up Languages](../UserGuide/SM__CON_Locales_and_Languages.md#section_vkn_2lm_hw)\). You specify the values in other languages in the `Translations/<language_code>` fields. If you specify the values for only some of the configured languages, the field values in other languages remain unchanged.

If multiple localized values are provided in the `Translations` property of a field and in the `value` property of the same field in the format that is described in [Specify All Localized Values of a Multilingual Field](IntegrationDev_RESTExample_Basic_SetValue_Multi-Language_Fields.md), the request fails with the following error message: *Localized values of a multilingual field cannot be passed in Value and Translations properties.*

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that creates a record.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully. The response of a successful method call contains the created record in JSON format in the response body. The response includes only the values of the fields of the created record that were specified during the creation of the record or that were specified to be returned by using the parameters of the request.|
|*400*|The data specified in the request is invalid.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*412*|You have used the If-None-Match header with the `*` value, and the record already exists.|
|*422*|The data specified in the request is invalid, and the validation errors are returned in the error fields of the response body, as shown in the following example.

```
"CustomerID": {
 "value": "ABARTENDE1",
 "error": "'Customer' cannot be found in the system."
}
```

|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

Suppose that you need to specify values in English \(which is set as the default language\) and French in the **Description** box on the [Stock Items](../UserGuide/IN_20_25_00.md#) \(IN202500\) form. To do this, you specify the English value of the Description.value field of the StockItem entity, and the French value in the `Description.Translations.fr` field of the entity. See below for an example of update of the *LAPTOP15* stock item record with localized Description field values in JSON format.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/StockItem?
    $select=InventoryID,Description,Translations&
    $expand=Translations HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "InventoryID" : { "value" : "LAPTOP15" },
  "Description" : {
    "value": "new description in English",
    "Translations": {
      "fr": "nouvelle description en français"
    }
  }
}
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

