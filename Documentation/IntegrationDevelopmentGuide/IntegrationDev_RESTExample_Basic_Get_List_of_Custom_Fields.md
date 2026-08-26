# Retrieve the Schema of Custom Fields and Workflow Actions {#_64daacf1-75c4-4bfa-b57b-36222020e7c9 .concept}

Not all fields and actions that are available for an entity on the corresponding Acumatica ERP form may be included in the system endpoint. However, you can still work with some of these fields and actions through the REST API. For each top-level entity, the REST API provides the schema of custom fields and workflow actions.

Custom fields of an entity are the fields that are not defined in the endpoint for this entity. For each custom field, the schema includes the view name, field name, and type of the custom field. For more details, see [Custom Fields](IS__con_CB_Custom_Fields.md).

**Tip:** Custom fields can correspond to the following elements:

-   The predefined elements on an Acumatica ERP form that are not included in the entity definition
-   The elements that were added to the Acumatica ERP form in a customization project
-   The user-defined fields

Workflow actions are the actions defined in the workflow of the form. \(See more information in [Workflow Actions: General Information](../DeveloperGuide/WorkflowAPI_Actions_GeneralInfo.md).\) For each workflow action that is not included in the endpoint for an entity, the schema includes the name of the action and information about its parameters, including the name and type of each parameter.

To retrieve this schema by using the REST API, you access the needed URL with the `GET` HTTP method. See the following sections for details on the request and the response.

## HTTP Method and URL { .section}

If you need to obtain the schema of custom fields of an entity, you use the `GET` HTTP method and the following URL.

```
http://<Base endpoint URL>/<Top-level entity>/$adHocSchema
```

The URL includes the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to retrieve the schema of custom fields.

For example, suppose that you want to obtain the schema of custom fields of a stock item entity from a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You would use the following URL to retrieve the schema: *http://localhost/AcumaticaDB/entity/Default/25.200.001/StockItem/$adHocSchema*.

## Parameters { .section}

You use no parameters when you retrieve the schema of custom fields.

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

The following table lists the HTTP status codes that the system returns for a request that retrieves the schema of the custom fields of an entity.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully. The response body contains:-   The custom fields in each entity with the view name, field name, and type of the custom fields
-   The \_workflowActions field with the names of workflow actions and information about their parameters, including the name and type of each parameter

|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

The following request shows an example of the retrieval of the schema of custom fields and workflow actions of the Opportunity entity.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/Opportunity/$adHocSchema HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

The following fragment of response shows an example of custom fields of the entity.

```
"TaxDetails": [
        {
            ...,
            "custom": {
                "Taxes": {
                    "CuryExemptedAmt": {
                        "type": "CustomDecimalField",
                        "value": null
                    },
                    "TaxUOM": {
                        "type": "CustomStringField",
                        "value": null
                    },
                    "TaxableQty": {
                        "type": "CustomDecimalField",
                        "value": null
                    },
                    "RecordID": {
                        "type": "CustomIntField",
                        "value": null
                    },
                    "QuoteID": {
                        "type": "CustomGuidField",
                        "value": null
                    }
                }
            }
        }
    ],
```

The following fragment of response shows an example of information about a workflow action of the entity.

```language-json
"_workflowActions": [
        {
            "Open": {
                "parameters": {
                    "custom": {
                        "FilterPreview": {
                            "Reason": {
                                "type": "CustomStringField",
                                "value": null
                            },
                            "Stage": {
                                "type": "CustomStringField",
                                "value": null
                            }
                        }
                    }
                }
            }
        },
        ...
]
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

