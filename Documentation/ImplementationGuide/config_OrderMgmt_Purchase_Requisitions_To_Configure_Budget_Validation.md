# Purchase Requisition Configuration: To Set Up Budget Validation for Employee Requests {#_35e38e57-f862-430f-88ef-497ee32c298a .task}

In the following implementation activity, you will configure budget validation for purchase requests of an employee request class.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company needs computers and computer accessories for its employees. The company has a budget limitation of $5000 per month for computers and accessories from which only $1500 have not been spent.

Acting as purchasing manager Matt Parker, you need to create an employee request class and include a limited number of stock items in the class. Also, you need to set up budget validation for the requests of the class. You will then create an employee purchase request of the class and validate it against the budget.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Purchase Requisitions* feature has been enabled.
-   On the [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\) form, the budget has been created and released.
-   On the [Purchase Requisitions Preferences](../UserGuide/RQ_10_10_00.md) \(RQ101000\) form, the required settings, budget ledger, and budget calculation settings have been specified.
-   On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, the *Matt Parker* employee has been created and associated with the *parker* user account.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Request Classes](../UserGuide/RQ_20_10_00.md) \(RQ201000\) form, create an employee purchase request class.
2.  On the [Requests](../UserGuide/RQ_30_10_00.md) \(RQ301000\) form, create an employee purchase request of the class.

## System Preparation { .section}

Before you start creating an employee purchase request class, you should launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You sign in as purchasing manager Matt Parker by using the *parker* username and the *123* password.

## Step 1: Creating the Employee Purchase Request Class { .section}

To create the employee purchase request class for the requests for computers and accessories, do the following:

1.  On the [Request Classes](../UserGuide/RQ_20_10_00.md) \(RQ201000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    1.  **Request Class**: *INTCOMP*
    2.  **Description**: `Employee requests for computers and accessories`
    3.  **Promised Lead Time \(Days\)**: `3`
    4.  **Customer Request**: Cleared

        You leave this check box cleared because you are creating an employee request class.

    5.  **Allow Multiple Vendors per Request**: Selected
    6.  **Restrict Requested Items to the Specified List**: Selected
3.  On the **Item List** tab, add rows for items with the following inventory IDs:
    -   *LAPTOP15*
    -   *MONITOR24*
    -   *KEYBOARD*
4.  On the form toolbar, click **Save**.

## Step 2: Configuring Budget Validation for the Request Class { .section}

To configure budget validation for the employee purchase request class, do the following:

1.  While you are still viewing the *INTCOMP* purchase request class on the [Request Classes](../UserGuide/RQ_20_10_00.md) \(RQ201000\) form, on the **GL Accounts** tab, specify the following settings:
    1.  **Budget Validation**: *Warning*
    2.  **Use Expense Account From**: *Request Class*
    3.  **Expense Account:** *60000 - Purchase Expense*
2.  On the form toolbar, click **Save**.

## Step 3: Creating a Purchase Request and Validating It Against the Budget { .section}

To create an employee purchase request of the *INTCOMP* class, do the following:

1.  On the [Requests](../UserGuide/RQ_30_10_00.md) \(RQ301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    1.  **Request Class**: *INTCOMP*

        Notice that when you select this class, the **Requested By** box is filled in with *EP0000056 - Matt Parker*, the employee ID associated with the *parker* user account. Because an employee request class was selected, the company's employees are available for selection in the **Requested By** box, and if the signed-in user is associated with an employee account, the employee ID is selected by default.

    2.  **Description**: `Request for a laptop and a monitor`
3.  On the **Details** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  Specify the following settings in the added row:
        -   **Inventory ID**: *LAPTOP15*.

            Notice that only three stock items are available for selection in the lookup table because only these items are listed on the [Request Classes](../UserGuide/RQ_20_10_00.md) \(RQ201000\) form for the *INTCOMP* request class.

        -   **Order Qty.**: `1`.
    3.  On the table toolbar, click **Add Row**.
    4.  Specify the following settings in the added row:
        -   **Inventory ID**: *MONITOR24*
        -   **Order Qty.**: `1`
    5.  On the form toolbar, click **Save**.

        On the **Budget** tab, notice that a warning has appeared next to the tab's title and in the **Budget Amount** box. This means that the total amount of the request has exceeded the budget in the current month. A user can save a request with this warning, but according to the company's business processes, the request may not be fulfilled.


You have configured budget validation for purchase requests of the class.

**Parent topic:**[Purchase Requisitions](../ImplementationGuide/config_OrderMgmt_Purchase_Requisitions_Mapref.md)

