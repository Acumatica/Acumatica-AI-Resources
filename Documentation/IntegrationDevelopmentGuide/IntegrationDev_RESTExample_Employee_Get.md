# Retrieve Information about an Employee {#_24c23ce4-e0cf-4737-aa18-8286b562b81a .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can retrieve information about employees from Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following HTTP request example to retrieve the data of the employee with the *EP00000001* ID.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/Employee?
    $expand=ContactInfo,Delegates,EmployeeSettings,EmploymentHistory,
    FinancialSettings&$filter=EmployeeID eq 'EP00000001' HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{}
```

## Usage Notes { .section}

You can work with the information about the workgroups to which an employee belongs through the REST API. Use the Employee.CompanyTreeInfo property to obtain the list of workgroups and information about them. For each workgroup, the following information is available:

-   CompanyTree.WorkgroupID: The workgroup \(on the company tree\) this employee is a member of
-   CompanyTree.Owner: The default owner of the workgroup
-   CompanyTree.Active: An indicator of whether this employee is an active member of the workgroup

**Parent topic:**[Employee](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Employee.md)

