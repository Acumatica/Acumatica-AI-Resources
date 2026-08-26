# Retrieve Records with Attributes {#_56831ee7-14b0-45ef-8207-dace30beb2cb .concept}

In Acumatica ERP, some records have attributes that are visible on the **Attributes** tab of the data entry form. For details about attributes, see [Attributes](../UserGuide/CS__con_Attributes.md).

You may have to retrieve the records along with their attributes by using the contract-based REST API. To do this, you access the needed URL with the `GET` HTTP method, and in the parameters of the request, you specify the desired record fields and the fields that correspond to the needed attributes and attribute values. See the following sections for details on the request and the response.

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

When you retrieve records along with their attributes, you should use the following parameters:

-   *$select*: To list the desired record fields and the fields that correspond to the needed attributes and attribute values
-   *$expand*: To expand the detail entity that contains the fields that correspond to the attributes and attribute values

For example, for the Contact entity, to retrieve the values of attributes of records, you need to specify Attributes/AttributeID and Attributes/Value \(or Attributes/ValueDescription\) in the *$select* parameter, and Attributes in the *$expand* parameter. To learn the exact names of the fields that correspond to the attributes for a particular entity, you should review the fields of this entity on the [Web Service Endpoints](../UserGuide/SM_20_70_60.md) \(SM207060\) form or refer to the OpenAPI specification of the endpoint.

You can also use other parameters that are mentioned in [Retrieve Records by Conditions](IntegrationDev_RESTExample_Basic_Get_Records.md). For detailed descriptions of the parameters, see [Parameters for Retrieving Records](IntegrationDev_RESTExample_Parameter.md).

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

The following table lists the HTTP status codes that the system returns for a request that retrieves records along with their attributes.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully. The response body contains the data retrieved from the Acumatica ERP instance in JSON format.|
|*400*|The data specified in the request is invalid.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

The following request is an example of the retrieval of the FirstName, LastName, and JobTitle fields of contacts \(that is, the Contact top-level entity\), and the AttributeID and Value fields of the contacts’ attributes.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/Contact
    ?$expand=Attributes
    &$select=FirstName,LastName,JobTitle,Attributes/AttributeID,Attributes/Value 
    HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
```

Following is an example of a response.

```
[
    ...
    {
        "id": "6a47c888-0b10-e911-9fbe-7c5cf8918e20",
        "rowNumber": 20,
        "note": {
            "value": ""
        },
        "Attributes": [
            {
                "id": "dfe79fb3-b6a0-43a9-afa2-6641b943424d",
                "rowNumber": 1,
                "note": null,
                "AttributeID": {
                    "value": "INTEREST"
                },
                "Value": {},
                "custom": {}
            }
        ],
        "FirstName": {
            "value": "Stephane"
        },
        "JobTitle": {
            "value": "Customer Service & Network Manager"
        },
        "LastName": {
            "value": "Sans"
        },
        "custom": {}
    },
    ...
]
```

## Usage Notes { .section}

The attributes of top-level entities are exposed in the AttributeValue entities. An AttributeValue entity has the following fields:

-   AttributeID : The attribute identifier. Both internal values and external values can be used to set this field, but only the internal value can be retrieved.
-   AttributeDescription: The external value of the attribute identifier. The field is read-only.
-   Value: The attribute value. When the value is retrieved, the internal value is returned. To set the value, the internal value and the external value \(for control types other than multiselect combo boxes\) can be used. For multiselect combo boxes, an external value can be accepted only if it contains a single value without commas. For various control types, the following rules apply to the Value field:
    -   For check boxes, *0* is returned if the check box is not selected, and *1* is returned if the check box is selected. For setting a value, *0*, *1*, *false* \(case-insensitive\), or *true* \(case-insensitive\) can be used.
    -   For multiselect combo boxes, values separated by commas \(namely, *Value1,Value2,Value3*\) compose the internal value.
    -   For selectors, the values are set and retrieved in the same way as they are for text boxes.
    -   For date edit boxes, the internal values must be parsable through the use of the System.Globalization.CultureInfo.InvariantCulture Microsoft .NET object.
    -   For combo boxes of all types, date edit boxes, and check boxes, an error message is written to the error field when an attempt is made to set an unsupported value.
-   ValueDescription: The external value of the attribute. The field is read-only. The external value is based on the control type as follows:
    -   For text boxes and date edit boxes, the external value is the same as the internal value.
    -   For check boxes, the external value can be either *True* or *False*.
    -   For combo boxes, the label is used as the external value.
    -   For multiselect combo boxes, labels separated by commas and spaces after commas \(namely, *Label1, Label2, Label3*\) compose the external value.
-   Required: An indicator of whether the attribute is mandatory. This field is read-only.
-   RefNoteID: The value of the NoteID field of the object to which this attribute is referred. This field is read-only.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

