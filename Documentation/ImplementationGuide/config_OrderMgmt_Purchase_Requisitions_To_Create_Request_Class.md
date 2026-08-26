# Purchase Requisition Configuration: To Create Customer Request Class {#_ab684fea-c6ef-464e-ad3d-c1f4acebd42f .task}

In the following implementation activity, you will create a request class designed for customer requests—that is, requests for items that are needed by customers.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company has a few customers who want to order exotic fruits for their restaurants. SweetLife does not often receive orders for these fruits from its customers, but it has vendors who can sell these fruits, so it can satisfy customer requests for the fruits. Acting as purchasing manager Matt Parker, you need to create a customer request class to provide default settings for requests for exotic fruits. You will then create a request to see how the class settings affect the class.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Purchase Requisitions* feature has been enabled.
-   On the [Purchase Requisitions Preferences](../UserGuide/RQ_10_10_00.md) \(RQ101000\) form, the required settings have been specified.
-   On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, the *GOODFOOD* customer has been created.
-   On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, the following stock items have been created: *DRAGONFR*, *COCONUTS*, and *MANGOES*.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Request Classes](../UserGuide/RQ_20_10_00.md) \(RQ201000\) form, create a customer request class.
2.  On the [Requests](../UserGuide/RQ_30_10_00.md) \(RQ301000\) form, create a customer purchase request of the class.

## System Preparation { .section}

Before you start creating a purchase request class for customer requests, you should launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You sign in as purchasing manager Matt Parker by using the *parker* username and the *123* password.

## Step 1: Creating the Customer Request Class { .section}

To create a customer purchase request class for requests for exotic fruit, do the following:

1.  On the [Request Classes](../UserGuide/RQ_20_10_00.md) \(RQ201000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    1.  **Request Class**: `EXOTICFR`
    2.  **Description**: `Customer requests for exotic fruits`
    3.  **Promised Lead Time \(Days\)**: `2`
    4.  **Customer Request**: Selected.
    5.  **Allow Multiple Vendors per Request**: Selected
    6.  **Restrict Requested Items to the Specified List**: Selected
3.  On the **Item List** tab, add rows for items with the following inventory IDs:
    -   *DRAGONFR*
    -   *COCONUTS*
    -   *MANGOES*
4.  On the form toolbar, click **Save**.

## Step 2: Creating a Purchase Request of the Class { .section}

To create a purchase request of the `EXOTICFR` class, do the following:

1.  On the [Requests](../UserGuide/RQ_30_10_00.md) \(RQ301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    1.  **Request Class**: *EXOTICFR*
    2.  **Requested By**: *GOODFOOD*

        Because a customer request class was selected, the customers defined in the system are available for selection in this box, and you can select the customer that requested the items.

    3.  **Description**: `Order for mangoes`
3.  On the **Details** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Inventory** column, select *MANGOES*. Notice that only three stock items are available for selection in the lookup table because only these items are listed on the [Request Classes](../UserGuide/RQ_20_10_00.md) \(RQ201000\) form for the *EXOTICFR* request class.
    3.  In the **Order Qty.** box, specify `10`.
    4.  In the **Est. Unit Cost** box, specify `4.2`.
4.  On the form toolbar, click **Save**.

You have created a purchase request of the *EXOTICFR* class for the *GOODFOOD* customer.

**Parent topic:**[Purchase Requisitions](../ImplementationGuide/config_OrderMgmt_Purchase_Requisitions_Mapref.md)

