# Create an Employee {#_f04ea88a-8edf-471b-a7d5-6effb76a5cb6 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create employees in Acumatica ERP.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.

## Request { .section}

You can use the following HTTP request example to create an employee, Jane Doe.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Employee HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "Status": {"value": "Active"},
    "FinancialSettings":
    {
        "APAccount": {"value": "20000"},
        "APSubaccount": {"value": "000000"},
        "CashAccount": {"value": "10200WH"},
        "ExpenseAccount": {"value": "63000"},
        "ExpenseSubaccount": {"value": "000000"},
        "PaymentMethod": {"value": "CHECK"},
        "PrepaymentAccount": {"value": "20000"},
        "PrepaymentSubaccount": {"value": "000000"},
        "SalesAccount": {"value": "40000"},
        "SalesSubaccount": {"value": "000000"},
        "TaxZone": {},
        "Terms": {"value": "7D"}
    },
    "EmployeeSettings":
    {
        "BranchID": {"value": "HEADOFFICE"},
        "Calendar": {"value": "MAIN"},
        "CurrencyID": {"value": "USD"},
        "CurrencyRateTypeID": {"value": "SPOT"},
        "DepartmentID": {"value": "AFTERSALES"},
        "EmployeeClass": {"value": "EMPHOURLY"}
    },
    "ContactInfo":
    {
        "FirstName": {"value": "Jane"},
        "LastName": {"value": "Doe"}
    }
}
```

## Usage Notes { .section}

You can work with the information about the workgroups to which an employee belongs through the REST API. Use the Employee.CompanyTreeInfo property to add the employee to one or more workgroups. For each workgroup, the following information can be specified:

-   CompanyTree.WorkgroupID: The workgroup \(on the company tree\) this employee is a member of
-   CompanyTree.Owner: The default owner of the workgroup
-   CompanyTree.Active: An indicator of whether this employee is an active member of the workgroup

**Parent topic:**[Employee](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Employee.md)

