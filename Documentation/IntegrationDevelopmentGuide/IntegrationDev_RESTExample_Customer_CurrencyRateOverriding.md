# Enable Currency Overriding and Rate Overriding for a Customer {#_34a79e12-3f6d-45a6-936b-654d806af487 .concept}

By using the REST API, you can enable currency overriding and rate overriding for a customer.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Multicurrency Accounting* features are enabled.
5.  Configure multicurrency support as follows:
    1.  On the [Currencies](../Shared/../UserGuide/CM_20_20_00.md#) \(CM202000\) form, open *EUR*, select the **Active** and **Use for Accounting** check boxes, and specify the following values in the other boxes:

        -   **Realized Gain Account**: *83100*
        -   **Realized Loss Account**: *83100*
        -   **Unrealized Gain Account**: *84000*
        -   **Unrealized Loss Account**: *84000*
        -   **Revaluation Gain Account**: *83200*
        -   **Revaluation Loss Account**: *83200*
        -   **Rounding Gain Account**: *83100*
        -   **Rounding Loss Account**: *83100*
        Save your changes.

    2.  On the [Currency Management Preferences](../Shared/../UserGuide/CM_10_10_00.md#) \(CM101000\) form, click **Save** to save the default settings.
    3.  On the **Currency Rate Entry** tab of the [Currency Rates](../Shared/../UserGuide/CM_30_10_00.md#) \(CM301000\) form, add a row with the following settings:

        -   **From Currency**: *EUR*
        -   **Currency Rate Type**: *SPOT*
        -   **Currency Effective Date**: Today
        -   **Currency Rate**: 1.1
        -   **Mult./Div.**: *Multiply*
        Save your changes.


## Request { .section}

You can use the following request example to update the *FRUITICO* customer through the contract-based REST API. Through the executing of this request, currency overriding and rate overriding are enabled and the *SPOT* currency rate type is specified for the customer.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Customer HTTP/1.1
Host: [<Acumatica ERP instance URL>]
Accept: application/json
Content-Type: application/json

{
    "CustomerID": {"value": "FRUITICO"},
    "EnableCurrencyOverride": {"value": true},
    "EnableRateOverride": {"value": true},
    "CurrencyRateType": {"value": "SPOT"}
}
```

**Parent topic:**[Customer](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Customer.md)

