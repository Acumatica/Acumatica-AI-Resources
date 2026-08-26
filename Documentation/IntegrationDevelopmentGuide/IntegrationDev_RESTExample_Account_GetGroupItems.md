# Retrieve the List of Accounts in a Group {#_958a189e-8574-4d4a-9e92-87554773b51d .concept}

By using the REST API, you can retrieve the list of accounts in a group. Account groups are available on the [Account Groups](../UserGuide/PM_20_10_00.md) \(PM201000\) form in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to configure your client application and the Acumatica ERP instance to be used as follows:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Projects* feature is enabled.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
4.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to retrieve the list of accounts of the *ACCG02* account group through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/Account?
    $filter=AccountGroup%20eq%20'ACCG02'&$select=AccountCD HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

## Usage Notes { .section}

By using the REST API, you can create, modify, and remove account groups. For more information about account groups, see [Account Groups: General Information](../Shared/../UserGuide/Account_Groups_GeneralInfo.md).

The AccountGroup entity supports the creation, retrieval, update, and removal of the entity itself; however, you cannot modify the list of accounts of a particular account group by using the AccountGroup entity. Instead, you have to use the AccountGroup property in the Account entity. You can use the DefaultAccountID property of the AccountGroup entity to specify the default account for the group.

**Attention:** The removal of the default account from the group does not cause the DefaultAccountID property to be updated automatically. If you remove the default account from the group, you have to update the DefaultAccountID property.

You may use the following sequence of requests while working with account groups:

1.  [Create an Account Group](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_AccountGroup_Create.md)
2.  [Add an Account to an Account Group](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Account_AddToGroup.md)
3.  [Specify the Default Account of an Account Group](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_AccountGroup_SetDefaultAccount.md)
4.  [Retrieve the List of Accounts in a Group](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Account_GetGroupItems.md)
5.  [Remove an Account from a Group](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Account_ExcludeFromGroup.md)

**Parent topic:**[Account](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Account.md)

