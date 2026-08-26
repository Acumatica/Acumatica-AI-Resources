# Retrieve Localized Values of a Multilingual Field {#_44710da9-8e91-4836-92eb-d20a32a5dca6 .concept}

For some text boxes on Acumatica ERP forms, users can type values in multiple languages if multiple locales are configured in Acumatica ERP. For example, if your Acumatica ERP instance has the English and French locales activated and multilingual user input configured, you can specify the value of the **Description** box on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md#) \(IN202500\) form in English or French.

In this topic, you can learn how to retrieve localized values of a multilinqual field.

## HTTP Method and URL { .section}

If you need to retrieve the list of records, you use the `GET` HTTP method and the following URL.

```
GET http://<Base endpoint URL>/<Top-level entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to retrieve the list of records.

For example, suppose that you want to retrieve the list of stock item records from a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to retrieve the list of records: *http://localhost/AcumaticaDB/entity/Default/25.200.001/StockItem*.

## Parameters { .section}

You retrieve localized values by using the *$custom* parameter, in which you specify the name of a custom field.

To find out the field name and the view name of the needed custom field with localized values, you find out the field name and the view name of the multilingual text box and append *Translations* to the field name. \(For details on how to find out the field name and the view name of an element on the form, see [Custom Fields](IS__con_CB_Custom_Fields.md#).\) For example, the multilingual **Description** box on the [Stock Items](../UserGuide/IN_20_25_00.md#) form has the *Descr* field name and the *Item* view name; therefore, the custom field that contains the localized descriptions of a stock item has the *DescrTranslations* field name and the *Item* view name. So you should use the following parameter string in the request URL: *$custom=Item.DescrTranslations*.

## Request Headers { .section}

|Header|Description|
|------|-----------|
|Accept|Specifies the format of the response body, which should be application/json.|
|Cookie|Specifies the cookies that you have received during the sing-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header in any of the following cases:

 -   You have used the login method to sign in to Acumatica ERP.
-   You are using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

|

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that retrieves records by conditions.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully. The response body contains the list of records that satisfy the specified conditions.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

For example, suppose that you want to retrieve the localized values of the **Description** box on the [Stock Items](../UserGuide/IN_20_25_00.md#) form. Following is an example of a request.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET ?$custom=Item.DescrTranslations HTTP/1.1
Host: [<Acumatica ERP instance URL>]/entity/Default/25.200.001/StockItem
Accept: application/json
Content-Type: application/json
```

The returned value of a Translations custom field is a string with the available localized values of the field. The language to which the value belongs is identified by the two-letter ISO code of the language. For example, suppose that for a particular record, the **Description** element of the [Stock Items](../UserGuide/IN_20_25_00.md#) form has the value *Item* in English and *Pièce* in French. In this case, the value of the DescrTranslations custom field, which corresponds to the **Description** element, is the following string: `[{en:Item},{fr:Pièce}]`.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

