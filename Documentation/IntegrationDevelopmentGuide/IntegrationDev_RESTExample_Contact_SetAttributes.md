# Create a Contact with Attributes {#_832734ca-ea2a-4ff8-8a91-c263927c8286 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create contacts with attributes.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md) in the Installation Guide.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Customer Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

## Request { .section}

You can use the following request example to create the Brent Edds lead through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Contact HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "FirstName": {"value": "Brent"},
    "LastName": {"value": "Edds"},
    "Email": {"value": "brent.edds.test27@avantehs.com"},
    "ContactClass": {"value": "ENDCUST"},
    "Attributes": [
        {
            "AttributeID": {"value": "INTEREST"},
            "Value": {"value": "Jam,Maint"}
        }
    ]
}
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

**Parent topic:**[Contact](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Contact.md)

