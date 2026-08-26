# Retrieve the File Attached to a Stock Item {#_278b983f-eb41-413c-b7a5-5917083d39ae .concept}

By using the REST API, you can retrieve the attachments of a stock item. For example, in an online store, you may need to display an image of each item that is sold in the store. Images for the items can be stored in Acumatica ERP as attachments to the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form. To display an image of a stock item in the online store, you should retrieve the list of images that are attached to the stock item as described in [Retrieve the List of Attachments of a Stock Item](IntegrationDev_RESTExample_StockItem_GetAttachments.md) and then export the needed image as described in this topic.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *T100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *MYSTORE* branch.
4.  To find out the URL for the retrieval of the attachment, execute the request that is described in [Retrieve the List of Attachments of a Stock Item](IntegrationDev_RESTExample_StockItem_GetAttachments.md).

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

To retrieve the file attached to the *AAMACHINE1* stock item through the REST API, you can use the URL specified in the `files/href` field of the response of the request that is described in [Retrieve the List of Attachments of a Stock Item](IntegrationDev_RESTExample_StockItem_GetAttachments.md). An example of a request is shown below. The response will contain the contents of the `T2MCRO.jpg` file.

```
GET /entity/Default/25.200.001/files
    /9be45eb7-f97d-400b-96a5-1c4cf82faa96 HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[StockItem](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_StockItem.md)

