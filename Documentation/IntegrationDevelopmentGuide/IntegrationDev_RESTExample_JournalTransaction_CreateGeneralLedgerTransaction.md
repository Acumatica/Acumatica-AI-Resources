# Create a GL Transaction with a Project Code That Does Not Produce a Project Transaction {#_682496e3-6498-4855-b33d-a40dbf501b82 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can import to Acumatica ERP general ledger transactions with project codes that do not produce project transactions.

To create a general ledger transaction with a project code that does not produce a project transaction, you set the `IsNonPM` field of the JournalTransaction entity to *true*.

This setting could be used in the following user scenario: A construction company has built an integrated solution of Acumatica ERP with an external payroll system. The external payroll system calculates payoffs, including benefits, additions, deductions, and taxes. Once a week, the construction company needs to import general ledger transactions with project information from this payroll system to Acumatica ERP, where they are verified and released. The construction company doesn't want to update the project subledger in Acumatica ERP with the information from general ledger transactions \(for example, if the standard labor costs have already been posted to the project subledger from time entries\).

## System Preparation { .section}

Before you test the code below, you need to configure your client application and the Acumatica ERP instance to be used as follows:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Projects* feature is enabled.
3.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
4.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following request example to create a general ledger transaction through the contract-based REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/JournalTransaction?$expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "Module" : {"value" : "GL"},
  "TransactionDate" : {"value" : "2025-02-15T00:00:00"},
  "Description" : {"value" : "Transaction description"},
  "BranchID" : {"value" : "HEADOFFICE"},
  "Details" : [
  	{
  		"BranchID" : {"value" : "HEADOFFICE"},
  		"Account" : {"value" : "10200"},
  		"CostCode" : {"value" : "00000"},
  		"IsNonPM" : {"value" : true}
  	}
  ]
}
```

**Parent topic:**[JournalTransaction](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_JournalTransaction.md)

