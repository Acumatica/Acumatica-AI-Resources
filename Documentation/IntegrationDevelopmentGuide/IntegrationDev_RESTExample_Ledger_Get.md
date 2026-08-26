# Retrieve the List of Ledgers {#_33888e9b-c23c-4c05-a87a-231dcf211f59 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can retrieve a list of ledgers. For details about the management of ledgers, see [Managing Ledgers](../UserGuide/GL__MNG_Managing_Ledgers.md).

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

You can use the following HTTP request example to retrieve a list of the available ledgers. This request also retrieves information about the companies associated with each ledger and the branches that can post to each ledger.

```
GET /entity/Default/25.200.001/Ledger?
    $expand=Branches,Companies&
    $select=LedgerID,Branches/BranchID,Branches/BranchName,
    Branches/CompanyName,Companies/Company,Companies/CompanyName HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[Ledger](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Ledger.md)

