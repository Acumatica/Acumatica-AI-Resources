# Configuration of Scrap, Waste, and By-Products in Production: Implementation Activity {#_91423762-7cb1-49d2-8f97-ee2e45f8fe5d .task}

In the following implementation activity, you will learn how to set up the processing of scrap in the system.

## Story { .section}

Suppose that the production department of SweetLife Fruits &amp; Jams has decided to record the quantities of juicers that are damaged during assembly as scrapped items, write off scrap costs to a specific GL account, and store \(or quarantine\) the scrapped juicers in a dedicated location of the production warehouse. Further suppose that the quantity of completed items must exclude the quantity of scrapped items because juicers are usually assembled at the request of customers who expect to receive all the juicers they ordered.

Acting as an implementation manager, you will configure the system according to the requirements for tracking scrap.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the *51600, COGS - Scrap Expense* GL account has been created.
-   On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, the *WORKHOUSE* warehouse has been defined.
-   On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, the *CFJFRTSCR*, *PULPCONT1L*, *JUICECUP05L*, *MRBASE*, *FNSIEVE*, and *GRDISC01* stock items have been defined.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, make sure that the GL account for posting scrap costs has been created.
2.  On the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form, review the setting that manages adding of the scrapped quantity to the completed quantity.
3.  On the [Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\) form, create a reason code for scrap.
4.  On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, create a warehouse location for scrap.
5.  On the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form, specify the default settings for scrap storage.
6.  On the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, for the work center where the assembly operation is performed, specify the needed scrap action, which will be copied to new bills of materials that include the assembly operation.
7.  On the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form, create a bill of material for juicer assembly.

## System Preparation { .section}

Before you start performing the activity, do the following in a company with the U100 dataset preloaded:

1.  As prerequisites to the current activity, perform the following activities in the specified order:
    1.  [System Preparation for Manufacturing Implementation: Implementation Activity](config_MFG_General_Settings_Implem_Activity.md) so that the needed settings have been specified
    2.  [Configuring Work Centers: Implementation Activity](config_MFG_Work_Centers_Implem_Activity.md) so that the work center for the assembly operation has been created
    3.  [Production Order Types: To Create a Regular Production Order Type](config_MFG_Production_Order_Types_Implem_Activity_RO.md) so that the RO production order type has been created
2.  Sign in to this company as a system administrator with the *gibbs* username and *123* password.

## Step 1: Reviewing the GL Account for Scrap Costs { .section}

In a production system, you would need to create the GL account that will be used for posting scrap costs; this account has been predefined in the *U100* dataset for simplicity. In this step, you will make sure that this account has been created. Do the following:

1.  Open the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form.
2.  Notice that the *51600, COGS - Scrap Expense* GL account is listed in the table.

You will specify this GL account in the settings of a reason code that you will create for scrap.

## Step 2: Reviewing a Production Management Setting { .section}

You will review the setting that manages addition of scrap quantity to the quantity of completed items in production orders. Do the following:

1.  Open the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form.
2.  Make sure that the **Include Scrap in Completions** check box in the **Data Entry Settings** section is cleared. This means that the scrapped quantity will not be included in the completed quantity and that shop-floor employees will have to record a quantity of completed items for the assembly operation that is equal to the quantity to produce in the production order.

## Step 3: Creating a Reason Code for Scrap { .section}

To create a reason code that will provide a GL account for posting scrap costs, do the following:

1.  On the [Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\) form, add a new record.
2.  Specify the following settings for the record:
    -   **Reason Code**: `SCRAP`
    -   **Description**: `The reason code for scrap in manufacturing`
    -   **Usage**: *Production*
    -   **Account**: *51600*
3.  On the form toolbar, click **Save**.

## Step 4: Creating a Warehouse Location for Scrap { .section}

To create a warehouse location in the *WORKHOUSE* warehouse where scrapped items will be stored, do the following:

1.  On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, open the *WORKHOUSE* warehouse.
2.  In the table of the **Locations** tab, click **Add Row** on the table toolbar.
3.  In the row, specify the following settings:
    -   **Location ID**: `SCRAP`
    -   **Description**: `Location for scrap`
    -   **Active**: Selected
    -   **Sort Location**: Cleared
    -   **Include in Qty. Available**: Cleared
    -   **Cost Separately**: Selected
    -   **Sales Allowed**: Cleared
    -   **Receipts Allowed**: Selected
    -   **Transfers Allowed**: Selected
    -   **Production Allowed**: Cleared
    -   **Inventory Planning**: Cleared
4.  On the form toolbar, click **Save**.

## Step 5: Specifying Scrap Storage Settings { .section}

Because the company plans to store all scrapped items in a single warehouse location, you will specify the default warehouse and warehouse location for scrap in the settings of a regular production order type on the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form. Do the following:

1.  Open the *RO* order type.
2.  In the **Scrap** section of the **General** tab, specify the following settings:
    -   **Scrap Source**: *Order Type*
    -   **Scrap Warehouse**: *WORKHOUSE*
    -   **Scrap Location**: *SCRAP*
3.  On the form toolbar, click **Save**.

## Step 6: Specifying a Scrap Action for a Work Center { .section}

In this step, you will specify the *Quarantine* scrap action in the settings of the work center in which the assembly operation is performed. This scrap action indicates that the system should write off the scrap cost to a specific GL account and move the scrapped items to a specific warehouse location. Do the following:

1.  On the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, open the *WCR10* work center.
2.  In the **Scrap Action Default** box of the **General** tab, select *Quarantine*.
3.  On the form toolbar, click **Save**.

## Step 7: Creating a Bill of Material { .section}

To create a bill of material that includes the assembly operation, do the following:

1.  On the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Revision**: `A`
    -   **Hold**: Selected
    -   **Description**: `A bill of material for the assembly of juicers and quarantined scrap`
    -   **Inventory ID**: *CFJFRTSCR*
    -   **Warehouse**: *WORKHOUSE*
    -   **Start Date**: 1/1/2025
    -   **End Date**: Empty
3.  On the form toolbar, click **Save**.
4.  Add an assembly operation as follows:
    1.  On the toolbar of the Operations table \(which is directly below the Summary area\), click **Add Row**.
    2.  In the row, specify the following settings:
        -   **Operation ID**: `010`
        -   **Work Center**: *WCR10*
        -   **Setup Time**: `00:30`
        -   **Run Units**: `3`
        -   **Run Time**: `01:00`
        -   **Backflush Labor**: Cleared
        -   **Scrap Action**: *Quarantine* \(copied from the work center settings by the system\)
    3.  On the **Materials** tab, add rows for the items listed in the following table, specifying the listed quantity required for each.

        |Inventory ID|Qty. Required|
        |------------|-------------|
        |*PULPCONT1L*|`1`|
        |*JUICECUP05L*|`1`|
        |*MRBASE*|`1`|
        |*FNSIEVE*|`1`|
        |*GRDISC01*|`1`|

    4.  On the **Tools** tab, add rows for the tools listed in the following table, specifying the listed settings for each.

        You created these tools in [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md).

        |Tool ID|Qty. Required|Unit Cost|
        |-------|-------------|---------|
        |*HAMMER*|`1`|0.02|
        |*SCREWDRIVER*|`1`|0.20|

5.  On the form toolbar, click **Save**.
6.  In the Summary area, clear the **Hold** check box. The status changes to *Active*.
7.  On the form toolbar, click **Save**.

**Parent topic:**[Implementing Production with Scrap, Waste, and By-Products](../ImplementationGuide/config_MFG_Scrap_Mapref.md)

