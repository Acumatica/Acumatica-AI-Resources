# Apply Discounts to a Sales Order {#_c6ad394e-9e1f-4dc4-ad50-bc4ab988fc1f .concept}

If you are using the contract-based REST API to integrate Acumatica ERP with an external system, this external system can apply the available discounts to a document \(such as a sales order or AR invoice\) in a single API call. For details about the configuration and application of discounts, see [Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md).

A user scenario involving the need to apply discounts can be the following: Through an external system, a manager of the company needs to import sales orders or other documents to Acumatica ERP and apply the available discounts to them. For details about the preparation of data for the import, creation, and running of import scenarios, see [Preparing Data for Import and Export by Using Scenarios](../UserGuide/IS__mng_Data_Providers.md), [Configuring Import Scenarios](../UserGuide/IS__mng_Configuring_Import_Scenarios.md), and [Data Import](../UserGuide/IS__con_Data_Import.md).

**Tip:** Although discounts can be applied to other types of documents, in this example, sales orders will be imported.

## System Preparation { .section}

Before you test the code below, you do the following to configure your client application and the Acumatica ERP instance to be used:

1.  Deploy a new Acumatica ERP instance with the *U100* dataset. For details on deploying an instance, see [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure the *Inventory and Order Management*, *Inventory*, and *Customer Discounts* features are enabled.
3.  If you are using Postman as the client application for testing, in the `IntegrationDevelopmentGuide.postman_collection.json` collection, make sure that the collection’s variables have the proper values. This collection is located in the `IntegrationDevelopment\Help` folder of the [Help-and-Training-Examples](https://github.com/Acumatica/Help-and-Training-Examples) repository on GitHub.
4.  To sign in to the instance in the client application, use the tenant name \(which you specified when you created the instance\) and the *HEADOFFICE* branch.

To continue preparing the system, you need to create a discount code and a discount based on this discount code, and then import a sales order to which the discount is applicable and another sales order to which the discount is not applicable. You perform these tasks as follows:

1.  On the [Discount Codes](../UserGuide/AR_20_90_00.md) \(AR209000\) form, add a row, and create a discount code of the *Line* discount type that is applicable to *Customer and Item*. In the row, leave the four check boxes cleared for the discount code. It is especially important that the check box in the **Manual** column be cleared so that the system will calculate the discount automatically. Click **Save** on the form toolbar.
2.  On the [Discounts](../UserGuide/AR_20_95_00.md) \(AR209500\) form, select the discount code created in the previous instruction; then in the **Sequence** box, type the name and description for a new sequence, and click **Save** on the form toolbar.
3.  Specify the following settings in the Summary area:
    -   **Discount By**: *Percent*
    -   **Break By**: *Amount*
    -   **Active**: Selected
    -   **Promotional**: Selected
    -   **Effective Date**: Today's date
    -   **Expiration Date**: Any future date
4.  On the **Discount Breakpoints** tab, add a row to the table, and specify the following settings in the row:
    -   **Break Amount**: `500`
    -   **Discount Percent**: `5`
5.  On the **Items** tab, add a row to the table, and in the **Inventory ID** column of the row, select *APJAM32*.
6.  On the **Customers** tab, add a row to the table, and in the **Customer** column, select *GOODFOOD*.
7.  On the form toolbar, click **Save**.
8.  Create a CSV file with the following contents.

    ```
    ORDER NBR;ORDER TYPE;CUSTOMER;LOCATION;BRANCH;INVENTORY ID;QUANTITY
    SO0001;SO;GOODFOOD;MAIN;HEADOFFICE;APJAM32;10
    SO0002;SO;CANDYY;MAIN;HEADOFFICE;APJAM32;10
    ```

9.  On the [Data Providers](../UserGuide/SM_20_60_15.md) \(SM206015\) form, create a data provider as follows:
    1.  In the **Name** box, specify the name to be used for the data provider.
    2.  In the **Provider Type** box, select *CSV Provider*.
    3.  Save the data provider.
    4.  Drag the CSV file that you have created onto the form.
    5.  On the **Parameters** tab, set the value of the `Delimiter` parameter to *;*.
    6.  On the **Schema** tab, fill the schema of the data provider as follows:
        1.  On the left pane toolbar, click **Fill Schema Objects**.
        2.  In the **Active** column of the **Source Objects** table, select the check box in every row.
        3.  On the right pane toolbar, click **Fill Schema Fields**.
    7.  On the form toolbar, click **Save**.
10. On the [Import Scenarios](../UserGuide/SM_20_60_25.md) \(SM206025\) form, create an import scenario. In the Summary area, specify the following settings for it \(other settings in the area should remain unchanged\):
    -   **Screen Name**: *Sales Orders* \(the **Screen ID** is *SO.30.10.00*\)
    -   **Provider**: The data provider you created
    -   **Provider Object**: The CSV file used as the source for the data provider
11. Click **Save** on the form toolbar.
12. For the created import scenario, on the **Mapping** tab, add rows with the settings shown in the following table \(leaving the **Active** check box selected in each row\).

    |Target Object|Field or Action|Source Field or Value|
    |-------------|---------------|---------------------|
    |*Order Summary*|*Key: OrderType*|*=\[Document.OrderType\]*|
    |*Order Summary*|*Key: OrderNbr*|*=\[Document.OrderNbr\]*|
    |*Order Summary*|*Action: Cancel*| |
    |*Order Summary*|*Order Nbr.*|*ORDER NBR*|
    |*Order Summary*|*Action: Cancel*| |
    |*Order Summary*|*Order Type*|*ORDER TYPE*|
    |*Order Summary*|*Customer*|*CUSTOMER*|
    |*Order Summary*|*Location*|*LOCATION*|
    |*Details*|*&lt;Line Number&gt;*|*=-1*|
    |*Details*|*Branch*|*BRANCH*|
    |*Details*|*Inventory ID*|*INVENTORY ID*|
    |*Details*|*Quantity*|*QUANTITY*|
    |*Order Summary*|*Action: Save*| |

13. Click **Save** on the form toolbar.
14. On the [Import by Scenario](../UserGuide/SM_20_60_36.md) \(SM206036\) form, select the import scenario you have created, click **Prepare**, make sure that the table on the **Prepared Data** tab contains the correct data of two sales orders, and click **Import**.

## Request { .section}

You can use the following example of an HTTP request to apply available discounts to both imported sales orders. To affect both sales orders, you need to call the HTTP request twice, each time specifying the proper order number as the value of the `entity/OrderNbr` field.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Default/25.200.001/SalesOrder/AutoRecalculateDiscounts HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
    "entity" :
    {
        "OrderType" : {"value" : "SO"},
        "OrderNbr" : {"value" : "000065"}
    },
    "parameters": { }
}
```

Check the imported sales orders. Notice that the discount you created affected the imported sales order whose `OrderNbr` is specified in the request, but the discount did not affect the other imported sales order.

**Parent topic:**[SalesOrder](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_SalesOrder.md)

