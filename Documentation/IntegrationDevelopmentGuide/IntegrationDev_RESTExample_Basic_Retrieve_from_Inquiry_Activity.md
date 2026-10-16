# Activity 2.2.1: To Retrieve the Quantities of Stock Items

In this example, you will configure an HTTP request that exports the quantities of stock items from the Item Availability Data \(INGI0002\) custom generic inquiry in Acumatica ERP through the REST API.

No entity is mapped to the custom generic inquiry in the system endpoints, which are provided in Acumatica ERP by default. Thus, to export data from this generic inquiry by using the contract-based API, you need to use a custom endpoint or an extension of an existing endpoint. You will use the *ItemAvailabilityData/0001* custom endpoint, which has been preconfigured for this course on the [Web Service Endpoints](../UserGuide/SM_20_70_60.md) \(SM207060\) form. \(The creation of custom endpoints and endpoint extensions is outside of the scope of this course. For more details, see [Custom Endpoints and Endpoint Extensions](IS__con_CB_Endpoint_Extensions.md#).\)

You will use the `PUT` HTTP method and the ItemAvailabilityDataInquiry entity of the custom *ItemAvailabilityData/0001* endpoint. The ItemAvailabilityDataInquiry entity is mapped to the Item Availability Data custom generic inquiry.

You will use the $expand parameter to specify the nested detail entity \(ItemAvailabilityDataInquiryDetails\) to be returned. To retrieve the data from a generic inquiry, you have to expand the nested detail entity with the results of the generic inquiry.

Although this generic inquiry has a parameter \(which is optional\), you will not specify the parameter value of the inquiry in this example because you need to retrieve the full list of records of the generic inquiry.

## System Preparation

Before you can test the activity, you need to sign in to Acumatica ERP, as described in [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md). For the request in this example, you have to pass the cookies that you have received during the sign-in.

## Request

To retrieve the quantities of items, execute the following request.

```
PUT /entity/ItemAvailabilityData/0001/ItemAvailabilityDataInquiry?
    $expand=ItemAvailabilityDataInquiryDetails HTTP/1.1
Host: [<Acumatica ERP instance URL>]
Accept: application/json
Content-Type: application/json

{}
```

## Response

If the request is successful, the response contains the `200 OK` status code and includes the result of the generic inquiry in JSON format. The following code example shows a fragment of the response body.

```json
{
    "id": "972cefad-74d5-4ca6-adfa-372812145830",
    "rowNumber": 1,
    "note": null,
    "InventoryID": {},
    "ItemAvailabilityDataInquiryDetails": [
        {
            "id": "e4d9ca86-42ca-4c6f-a882-d89d2df80e9b",
            "rowNumber": 1,
            "note": null,
            "Description": {
                "value": "SIM card & contract"
            },
            "InventoryID": {
                "value": "SIMCARD"
            },
            "QtyAvailable": {
                "value": 1000
            },
            "QtyOnHand": {
                "value": 1000
            },
            "Warehouse": {
                "value": "YOGI"
            },
            "custom": {}
        },
        ...
    ],
    "custom": {}
}
```

