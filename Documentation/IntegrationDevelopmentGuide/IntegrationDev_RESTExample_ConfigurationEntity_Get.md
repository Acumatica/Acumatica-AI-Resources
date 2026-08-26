# Retrieve a Configuration Entry {#_efdbf4d4-0bb0-49d7-8b43-65e22d5a4b65 .concept}

Through the contract-based REST API, an external application can retrieve features and options of the manufacturing product configurator from Acumatica ERP Manufacturing Edition and expose them to a user of the external application. These features and options are available for Acumatica ERP Manufacturing Edition users on the [Configuration Entry](../UserGuide/AM_30_60_00.md) \(AM306000\) form.

## System Preparation { .section}

Before you test the code in the following section, you need to do the following:

1.  Deploy a new Acumatica ERP instance with the *SalesDemo* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure that the *Manufacturing* and *Product Configurator* features are enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *PRODWHOLE* branch.

## Request { .section}

You can use the following request example to retrieve the configuration entry with the *AMC000001* ID through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/MANUFACTURING/25.100.001/ConfigurationEntry/AMC000001?
    $expand=Attributes,Features/Options HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[ConfigurationEntry](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_ConfigurationEntry.md)

