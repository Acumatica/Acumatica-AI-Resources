# Create an Invoice with Tax Parameters Overridden {#_606da1ba-0c1d-4d52-b15f-7a41ef0e2171 .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can create invoices with the tax parameters overridden.

## System Preparation { .section}

Before you test the code below, do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *SalesDemo* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md#) \(CS100000\) form, make sure the *Inventory and Order Management* feature is enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *PRODWHOLE* branch.

To further prepare the system, you need to create a tax and a tax category that uses this tax, and modify the existing tax zone so that it will use the new tax. You perform these tasks as follows:

**Tip:** If you use the `IntegrationDevelopmentGuide.postman_collection.json` Postman collection for testing, you do not need to perform the following configuration steps because they are performed in the pre-request script.

1.  On the [Taxes](../Shared/../UserGuide/TX_20_50_00.md) \(TX205000\) form, create a tax with the tax schedule as follows:
    1.  Create a tax with the following parameters:
        -   **Tax ID**: *PST*
        -   **Description**: *Tax ID for testing*
        -   **Tax Type**: *VAT*
        -   **Include in VAT Taxable Total**: Selected
        -   **Exclude from Tax on Tax Calculation**: Selected
        -   **Tax Agency**: *CANADABC*
    2.  On the **Tax Schedule** tab of the form, add two rows with the following data.

        |Column|First Row|Second Row|
        |------|---------|----------|
        |**Start Data**|*1/1/1900*|*1/1/1900*|
        |**Tax Rate**|*5*|*5*|
        |**Min. Taxable Amount**|*0*|*0*|
        |**Max. Taxable Amount**|*0*|*0*|
        |**Reporting Group**|*Input Tax \(purchases\)*|*Output Tax \(sales\)*|
        |**Group Type**|*Input*|*Output*|

    3.  Click **Save**.
2.  On the [Tax Categories](../Shared/../UserGuide/TX_20_55_00.md) \(TX205500\) form, create the *TEST* tax category with the *Tax category for test* description and add the *CAGST* and *PST* taxes to the tax category.
3.  On the **Applicable Taxes** tab of the [Tax Zones](../Shared/../UserGuide/TX_20_60_00.md) \(TX206000\) form, add the *PST* tax to the *CANADABC* tax zone.

## Request { .section}

You can use the following example of an HTTP request to create an invoice with the tax parameters that are different from those registered in the system.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/Invoice?$expand=Details,TaxDetails HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "CreatedDateTime": {
        "value": "1900-01-01T03:00:00+03:00"
    },
    "Customer": {
        "value": "AACUSTOMER"
    },
    "Date": {
        "value": "2022-01-23T00:00:00+03:00"
    },
    "Description": {
        "value": "Invoice with Taxes"
    },
    "Details": [
        {
            "Account": {
                "value": "40000"
            },
            "Amount": {
                "value": 1000
            },
            "Branch": {
                "value": "PRODWHOLE"
            },
            "ExtendedPrice": {
                "value": 1000
            },
            "InventoryID": {
                "value": "CONSULTING"
            },
            "LineNbr": {
                "value": 1
            },
            "ProjectTask": {},
            "Qty": {
                "value": 10
            },
            "TransactionDescription": {
                "value": "Project Consulting"
            },
            "UnitPrice": {
                "value": 100
            },
            "UOM": {
                "value": "HOUR"
            }
        }
    ],
    "Hold": {
        "value": false
    },
    "IsTaxValid": {
        "value": true
    },
    "LocationID": {
        "value": "MAIN"
    },
    "PostPeriod": {
        "value": "012022"
    },
    "TaxDetails": [
        {
            "TaxID": {
                "value": "CAGST"
            },
            "TaxableAmount": {
                "value": 1000.0
            },
            "TaxAmount": {
                "value": 150.0
            },
            "ExpenseAmount": {
                "value": 0.0
            }
        },
        {
            "TaxID": {
                "value": "PST"
            },
            "TaxableAmount": {
                "value": 1000.0
            },
            "TaxAmount": {
                "value": 150.0
            }
        }
    ],
    "Type": {
        "value": "Invoice"
    },
    "custom": {
        "CurrentDocument": {
            "TaxZoneID": {
                "type": "CustomStringField",
                "value": "CANADABC"
            }
        }
    }
}
```

In the request above, you have set the `IsTaxValid` value to *true* to use in the invoice the tax parameters specified in the `TaxDetails` field. If you do not specify this value, the tax parameters that are registered in the system will be used instead. In particular, the tax amounts equal to *50* will be set both for the *CAGST* and *PST* taxes in the created bill, and the *CABCPST* tax of the amount *70* will be applied as well.

## Usage Notes { .section}

If the `IsTaxValid` field is specified in the request body, its value is set to *true*, and an external tax zone is specified, then the tax details from the request body are used without modification, and no other taxes are applied.

If the `IsTaxValid` field is specified in the request body, its value is set to *true*, and an internal tax zone is specified, then the tax details from the request body are compared to those calculated by the system. If the taxes specified in the request body are present among those calculated by the system, then the tax details from the request body are used without modification and no other taxes are applied.

If the `IsTaxValid` field is not specified in the request body or its value is not set to *true*, tax calculation is performed by the system.

**Parent topic:**[Invoice](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Invoice.md)

