# Specify All Localized Values of a Multilingual Field {#_33e74dc8-aad3-4fb0-b3ac-e8ecaf323578 .concept}

For some text boxes on Acumatica ERP forms, users can type values in multiple languages if multiple locales are configured in Acumatica ERP. For example, if your Acumatica ERP instance has the English and French locales activated and multilingual user input configured, you can specify the value of the **Description** box on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md#) \(IN202500\) form in English or French.

This topic describes a way to specify all localized values of a multilingual field. However, we recommend that you use another way that allows you to specify any number of localized values of a multilingual field \(see [Specify Any Number of Localized Values of a Multilingual Field](IntegrationDev_RESTExample_Basic_SetSomeValues_Multilingual_Fields.md)\).

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

For information on the request parameters, see the *Parameters* section of [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md) and the *Parameters* section of [Update a Record](IntegrationDev_RESTExample_Basic_Update_Record.md).

## Request Headers { .section}

For the information on HTTP headers to use, see [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md) or [Update a Record](IntegrationDev_RESTExample_Basic_Update_Record.md) depending on the operation you perform \(creation or update of a record\).

## Request Body { .section}

In the HTTP body, you specify values in the following format: `[{language_code1:value1},{language_code2:value2},...]`. As the language code, you use the two-letter ISO code of the language with which the value should be associated.

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

In the example that is mentioned at the beginning of the topic, if you need to specify values in English and French in the **Description** box on the [Stock Items](../UserGuide/IN_20_25_00.md#) form, you specify the value of the Description field of the StockItem entity in the following format: `[{en:English description},{fr:French description}]`. See below for an example of a stock item record with localized Description field values.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/StockItem HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "InventoryID" : {"value" : "BASESERV" },
  "ItemClass" : {"value" : "COMPUTERS" },
  "Description" : {"value" : "[{en:Item},{fr:Pièce}]" }
}
```

## Usage Notes { .section}

In the payload, you should specify the actual values of the field in all languages that are configured for multilingual user input. If you specify the values of the field in particular languages, the values of the field in other languages configured for multilingual user input become empty. For example, suppose that in your instance of Acumatica ERP, multilingual fields can have values in English and French. If you pass the value of a field in the following format `[{en:English description}]`, the French value of the field becomes empty.

If you specify the value of a multilingual field as plain text, this text is saved as the value of the corresponding box in the default language of Acumatica ERP. For details on how to specify the default language, see [Setting Up Languages](../UserGuide/SM__CON_Locales_and_Languages.md#section_vkn_2lm_hw).

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

