# Approve a Bill {#_d2501c01-f3da-45be-b056-2143b31f98e0 .concept}

By using the REST API, you can approve a bill, which is available on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form.

## System Preparation { .section}

Before you test the code below, you need to do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, enable the *Inventory and Order Management* and *Approval Workflow* features, or make sure that they are enabled.
3.  On the form toolbar of the [Assignment and Approval Maps](../UserGuide/EP_20_55_00.md#) \(EP205500\) form, click **Add Approval Map**.
4.  On the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, which opens, configure a new approval map as follows:
    1.  In the **Name** box, type *Bill Approval*.
    2.  In the **Entity Type** box, select *Bills and Adjustments*.
    3.  In the **Steps** pane, click **Add Step**.
    4.  Select the **Rule** tree item that has appeared.
    5.  On the **Conditions** tab, click **Add Row**, and specify the following settings in the row:
        -   **Active**: Selected
        -   **Entity**: *Vendor*
        -   **Field Name**: *Vendor*
        -   **Condition**: *Equals*
        -   **Value**: *IRS*
    6.  On the **Rule Actions** tab, change the approval settings to the following:
        -   **Approver**: *Employee*
        -   **Employee**: *Anna Johnson*
    7.  Save the approval map.
5.  On the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md#) \(AP101000\) form, make the following changes:
    1.  On the **General** tab, in the **Data Entry Settings** section, select the **Require Approval of Bills Prior to Payment** check box.
    2.  On the **Approval** tab, add a row to the table, and specify the following settings in the row:
        -   **Active**: Selected
        -   **Type**: *Bill*
        -   **Approval Map**: *Bill Approval*
        -   **Pending Approval Notification**: *AP Bill*
    3.  Save your changes.
6.  On the [Bills and Adjustments](../UserGuide/AP_30_10_00.md#) \(AP301000\) form, open the *000159* bill.
7.  On the form toolbar, click **Remove Hold**, then click **Save**.
8.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
9.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\), the *HEADOFFICE* branch, the *johnson* name, and the *123* password.

## Request { .section}

You can use the following example of an HTTP request to approve the *000159* AP bill.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Default/25.200.001/Bill/Approve HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "entity": {
        "Type": {"value": "Bill"},
        "ReferenceNbr": {"value": "000159"}
    },
    "parameters": {}
}
```

**Parent topic:**[Bill](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Bill.md)

