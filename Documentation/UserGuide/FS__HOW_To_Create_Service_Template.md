# To Create a Service Template {#_affda31f-3002-4b2b-aaeb-6d2427210a81 .task}

You use the [Service Templates](FS_20_49_00.md) \(FS204900\) form to create a service template in the system. For details on service templates, see [Service Templates](FS__CON_Service_Templates.md).

## Before You Proceed { .section}

Before you begin creating a service template, make sure that the necessary types of equipment-related service orders have been created on the [Service Order Types](FS_20_23_00.md) \(FS202300\) form and services for the orders have been created on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

## To Create a Service Template { .section}

1.  Open the [Service Templates](../Shared/../UserGuide/FS_20_49_00.md) \(FS204900\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Service Template ID** box, enter the identifier of the service template.
4.  In the **Description** box, enter a brief description of the service template.
5.  In the **Service Order Type** box, select the service order type related to the services of the template.
6.  On the **Details** tab, do the following for each service you want to add to the template:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Service ID** column, select the service you want to add.
    3.  In the **Quantity** column, change the quantity of service items \(which is 1 by default\) if necessary.
7.  Optional: On the **Details** tab, perform the following steps for each stock item you need to add:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Inventory ID** column, select the stock item you want to add.
    3.  In the **Quantity** column, check the quantity of stock items and change it if necessary. By default, 1 is specified.
8.  Click **Save**.

## Notes About the Procedure { .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

You can add items on the **Details** tab only if the *Sales Orders* option is selected in the **Generated Billing Documents** box on the **General** tab of the [Service Order Types](FS_20_23_00.md) \(FS202300\) form for the selected service order type. The necessary stock items have to be created on the [Stock Items](IN_20_25_00.md) \(IN202500\) form in order to be added on this tab.

**Parent topic:**[Managing Service Templates](../UserGuide/FS__MNG_Service_Templates.md)

