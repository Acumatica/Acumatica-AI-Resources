# System Preparation for Manufacturing Implementation: Implementation Activity {#_f713201a-66c5-403a-a531-62fa3cb09a1a .task}

In this implementation activity, you will learn how to prepare the system for specifying manufacturing-specific settings.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that based on requests from customers, SweetLife Fruits &amp; Jams has decided to assemble customized juicers. The company has organized a work center where workers assemble juicers from parts bought from the Squeezo Inc. vendor.

As an implementation manager, you need to prepare the system for the specification of manufacturing-specific settings.

## Process Overview { .section}

In this activity, to prepare the system for the implementation of manufacturing functionality, you will do the following:

1.  On the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form, make sure that the numbering sequences for manufacturing batches and entities have been created
2.  On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, make sure that the GL accounts required for the manufacturing processes have been created
3.  On the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form, make sure that a posting class that will provide posting settings to the items involved in manufacturing has been created
4.  On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, make sure that the warehouse and locations to be involved in manufacturing have been created and defined properly
5.  On the [Availability Calculation Rules](../UserGuide/IN_20_15_00.md) \(IN201500\) form, make sure that the availability calculation rule that will be used for calculating availability of items involved in manufacturing has been created
6.  On the [Replenishment Classes](../UserGuide/IN_20_88_00.md) \(IN208800\) form, make sure that the replenishment class for items being manufactured has been created
7.  On the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form, make sure that the item classes that will provide default settings for items involved in manufacturing have been created and defined properly
8.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, create a stock item for a juicer, which will be assembled
9.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, create a stock item for a juicer part, which will be purchased
10. On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, specify the appropriate setting for an employee that will be involved in manufacturing
11. On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, review the settings of the *SO* order type and configure the *TR* and *QT* order types, which will be involved in the manufacturing processes
12. On the [BOM Preferences](../UserGuide/AM_10_10_00.md) \(AM101000\) form, review the basic settings related to bills of material
13. On the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form, review the basic settings related to production management

## System Preparation { .section}

Before you start specifying the general settings to prepare the system for manufacturing implementation, you perform the following instructions:

1.  Sign in to a company with the *U100* dataset preloaded; you need to sign in as a system administrator with the *gibbs* username and *123* password.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, enable the following features:
    -   *Manufacturing*
    -   *Material Requirements Planning*
    -   *Product Configurator*
    -   *Estimating*
    -   *Advanced Planning and Scheduling*
    -   *Engineering Change Control*
    -   *Manufacturing Data Collection*

## Step 1: Reviewing Numbering Sequences { .section}

In a production system, you would need to create all of the numbering sequences that will be used in the system for manufacturing batches and entity identifiers. These numbering sequences have been defined in the U100 dataset for simplicity; you will verify that they have been created and review the settings of one of the numbering sequences. Do the following:

1.  Open the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form.
2.  In the **Numbering ID** box of the Summary area, click the selector button.
3.  Notice that the following predefined numbering sequences are listed in the lookup table that opens:
    -   *AMBATCH*
    -   *AMBOM*
    -   *AMCOST*
    -   *AMCTP*
    -   *AMDIS*
    -   *AMECO*
    -   *AMECR*
    -   *AMEST*
    -   *AMFCST*
    -   *AMMATL*
    -   *AMMPS*
    -   *AMPLAN*
    -   *AMPROD*
    -   *AMVSHIP*
    -   *AMWIP*
4.  Select *AMBOM* \(which is the numbering sequence created for numbering bills of material\), and review its settings as follows:
    1.  Notice that the **Manual Numbering** check box in the Summary area is cleared, which means that bills of material will be numbered automatically.
    2.  Notice that *BOM000001* is specified in the **Start Number** column of the only row, which is the number of the first bill of material.

The system will use these numbering sequences on the relevant forms involved in the manufacturing processes.

## Step 2: Reviewing the GL Accounts { .section}

In a production system, you would need to create the GL accounts that will be used in manufacturing; these accounts have been predefined in the *U100* dataset for simplicity. In this step, you will verify that these accounts have been created. Do the following:

1.  Open the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form.
2.  Notice that the following accounts are listed in the table:
    -   *12500, Work in Progress for Manufacturing*
    -   *51000, Accrued COGS - Direct Labor Costs*
    -   *51050, Accrued COGS - Fixed Overhead Costs*
    -   *51060, Accrued COGS - Fixed Machine Costs*
    -   *51070, Accrued COGS - Fixed Tool Costs*
    -   *51100, Accrued COGS - Indirect Labor Costs*
    -   *51150, Accrued COGS - Variable Overhead Costs*
    -   *51500, COGS - WIP Inventory Variance*
    -   *51600, COGS - Scrap Expense*

The system will insert these accounts on the relevant forms, enabling their use throughout the manufacturing processes.

## Step 3: Reviewing the Posting Class { .section}

In a production system, you would need to create the posting class that will be used in manufacturing. This posting class has been predefined in the *U100* dataset for simplicity. In this step, you will verify that this posting class has been created as follows:

1.  Open the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form.
2.  In the **Class ID** box of the Summary area, select *MFGI*.
3.  Notice that *Posting Class* is selected in the **Use WIP Account From** and **Use WIP Variance Account From** boxes in the **Posting Settings** section. This means that the system will copy these accounts from the posting class, and the accounts can be changed on the item level if necessary.
4.  Notice that the following settings are specified in the **Default GL Accounts** section:
    -   **Work in Process Account**: *12500 - Work in Progress for Manufacturing*
    -   **WIP Variance Account**: *51500 - COGS - WIP Inventory Variance*

## Step 4: Reviewing Warehouse and Location Settings { .section}

In a production system, you would need to create a warehouse and its locations that will be dedicated to manufacturing or specify manufacturing-related settings for an existing warehouse and its locations. In the *U100* dataset, a separate warehouse has been created and all required settings have been specified. In this step, you will review the settings for this predefined warehouse and its locations and for a warehouse that is not involved in manufacturing. Do the following:

1.  Open the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form.
2.  In the **Warehouse ID** box of the Summary area, select *WORKHOUSE*.
3.  Make sure that *SWEETEQUIP* is selected in the **Branch** box.
4.  On the **Locations** tab, do the following:
    1.  Notice that the following check boxes are selected in the rows with the *MTL* and *MGI* locations, which will be used for storing materials and manufactured items, respectively:
        -   **Include in Qty. Available**
        -   **Sales Allowed**
        -   **Receipts Allowed**
        -   **Production Allowed**
        -   **Transfers Allowed**
        -   **Inventory Planning**
    2.  Notice that the following check boxes are selected in the row with the *DMTL* location, which will be used for storing defective materials:
        -   **Receipts Allowed**
        -   **Transfers Allowed**
5.  Notice that the following settings are specified on the **GL Accounts** tab:
    1.  **Work in Process Account**: *12500 - Work in Progress for Manufacturing*
    2.  **WIP Variance Account**: *51500 - COGS - WIP Inventory Variance*
6.  Go to the **Inventory Planning** tab, and notice that all check boxes are selected in the **Inventory Planning Settings** section.
7.  In the **Warehouse ID** box of the Summary area, select *EQUIPHOUSE* \(this warehouse is not involved in manufacturing\).
8.  Go to the **Locations** tab, and notice that the check box in the **Inventory Planning** column is cleared for all rows.
9.  Go to the **Inventory Planning** tab, and notice that all check boxes in the **Inventory Planning Settings** section are cleared.

## Step 5: Reviewing the Availability Calculation Rule { .section}

In a production system, you would need to create an availability calculation rule that will include additional settings related to documents used in the manufacturing processes. This availability calculation rule has been predefined in the *U100* dataset for simplicity. In this step, you will review the settings of the rule. Do the following:

1.  On the [Availability Calculation Rules](../UserGuide/IN_20_15_00.md) \(IN201500\) form, open the *MFGITEMS* rule.
2.  Notice that the following check boxes are selected:

    -   **Deduct Qty. on Issues**
    -   **Deduct Qty. on Sales Orders**
    -   **Deduct Qty. Shipped**
    -   **Deduct Qty. Allocated**
    -   **Deduct Qty. on Back Orders**
    -   **Deduct Qty. on Production Demand Prepared**
    -   **Deduct Qty. on Production Demand**
    -   **Deduct Qty. on Production Allocated**
    -   **Include Qty. on Receipts**
    -   **Include Qty. on PO Receipts**
    With these settings, the quantities of items that are issued, shipped, added to sales orders, allocated to sales orders, added to back orders, and allocated to production orders will be deducted from the available quantity; the quantities of items that are included in inventory and PO receipts will be added to the available quantity.


## Step 6: Reviewing Replenishment Classes { .section}

If in a production system the *Inventory Replenishment* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you would need to create replenishment classes that will be used for items being manufactured. These replenishment classes have been predefined in the *U100* dataset for simplicity. In this step, you will review the settings of the replenishment classes. Do the following:

1.  Open the [Replenishment Classes](../UserGuide/IN_20_88_00.md) \(IN208800\) form.
2.  Notice that a class with the *Manufacturing* replenishment source in the **Replenishment Source** column is displayed in the table. This class will be used for items to be manufactured.
3.  Notice that a class with the *Purchase* replenishment source is displayed in the table. This replenishment class will be used for items to be purchased.

## Step 7: Reviewing Item Classes { .section}

In a production system, you would need to create one or multiple item classes that will provide default settings to newly created items involved in manufacturing. Two item classes have been predefined in the *U100* dataset for simplicity. In this step, you will review the settings of the item classes. Do the following:

1.  Open the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form.
2.  In the **Item Class Tree** of the left pane, select *JUICERCFG*. This item class provides default settings for new configurable juicer items.

    **Tip:** The left pane may be collapsed by default, so you may need to expand it first. Alternatively, you can use the **Class ID** box to select the needed item class.

3.  On the **General** tab, do the following:
    1.  In the **General Settings** section, notice that the **Stock Item** check box is selected.
    2.  In the **Posting Class** box, notice that *MFGI* is selected.
    3.  In the **Default Warehouse** box, notice that *WORKHOUSE* is selected.
    4.  In the **Availability Calculation Rule** box, notice that *MFGITEMS* is selected.
    5.  In the **Unit of Measure** section, notice that the **Divisible Unit** check boxes are cleared. This means that the system will operate with only integer quantities of items in transactions and documents.
4.  Go to the **Inventory Planning** tab, and notice that a row with the *PRODUCTION* replenishment class has been added.

    This indicates that items of the class will be manufactured.

5.  In the **Source** box \(**Production Order Defaults** section\), select *Manufacturing*.
6.  On the form toolbar, click **Save**.
7.  In the **Item Class Tree**, select *JCRCFGPRT*. This item class provides default settings for new part items for configurable juicers.
8.  On the **General** tab, do the following:
    1.  In the **General Settings** section, notice that the **Stock Item** check box is selected.
    2.  In the **Posting Class** box, notice that *MFGI* is selected.
    3.  In the **Default Warehouse** box, notice that *WORKHOUSE* is selected.
    4.  In the **Availability Calculation Rule** box, notice that *MFGITEMS* is selected.
    5.  In the **Unit of Measure** section, notice that the **Divisible Unit** check boxes are cleared. This means that the system will operate with only integer quantities of items in transactions and documents.
9.  Go to the **Inventory Planning** tab, and notice that the row with the *PURCHASE* replenishment class has been added.

    This indicates that items of the class will be purchased.


## Step 8: Creating a Stock Item Being Manufactured { .section}

You will create a stock item for a juicer that makes juice from soft fruits and berries. Do the following:

1.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, add a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the **Inventory ID** box of the Summary area, type `CFJSOFT`.
3.  In the **Description** box, type `A configurable juicer for soft fruit, vegetables, and berries`.
4.  In the **Item Class** box of the **General** tab \(**Item Defaults** section\), select *JUICERCFG*. The system copies the settings of the item class into the following boxes of the section:
    -   **Type**: *Finished Good*
    -   **Valuation Method**: *Average*
    -   **Posting Class**: *MFGI*
    -   **Default Warehouse**: *WORKHOUSE*
5.  On the **Manufacturing** tab, notice that *Manufacturing* has been copied as the item source from the item class. Specify the following settings:
    1.  In the **Source for Production Order** box of the **General** section, select *Production*.
    2.  Select the **Make-to-Order Item** check box.
    3.  In the **Scheduling** section of the tab, notice that the **Check for Material Availability** check box is selected.
6.  On the form toolbar, click **Save**.

## Step 9: Creating a Stock Item for a Component Being Purchased { .section}

You will create a stock item for a component of a configurable juicer: a grating disc with medium peeling, which will be purchased from the Jalooza vendor. Do the following on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, which is still open:

1.  On the form toolbar, click **Add New Record**.
2.  In the **Inventory ID** box of the Summary area, type `GRDISC03`.
3.  In the **Description** box, type `Grating disc for medium peeling (for configurable juicers)`.
4.  In the **Item Class** box on the **General** tab \(**Item Defaults** section\), select *JCRCFGPRT*. The system copies the settings of the item class into the following boxes of the section:
    -   **Type**: *Finished Good*
    -   **Valuation Method**: *Average*
    -   **Posting Class**: *MFGI*
    -   **Default Warehouse**: *WORKHOUSE*
5.  In the **Default Issue From** box of the **Warehouse Defaults** section, select *MTL* \(which is the location where components for juicers will be stored\).
6.  In the **Default Receipt To** box, select *MTL*.
7.  On the **Vendors** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Vendor ID** column of the row, select *JALOOZA*.
    3.  Notice that a lead time \(*7*\) is specified in the **Lead Time \(Days\)** column.
8.  On the **Warehouses** tab, notice that a row for *WORKHOUSE* has been added.
9.  In the **Last Cost** box on the **Price/Cost** tab \(**Cost Statistics** section\), type `39.90`.
10. On the form toolbar, click **Save**.

## Step 10: Selecting Employees Involved in Production { .section}

Three employees will be involved in juicer assembly: two workers and one manager. You will mark one of these employees, Carlos Cruz, as being involved in production. Do the following:

1.  On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, open the *EP00000027 – Carlos Cruz* employee.
2.  In the **Additional Settings** section of the **General** tab, select the **Production Employee** check box.
3.  On the form toolbar, click **Save**.

For the other two employees, Casey Burrows and Gladys Peters, the **Production Employee** check box has already been selected.

## Step 11: Configuring Sales Order Types { .section}

You will review the settings of the *SO* order type and configure the *TR* and *QT* order types, which will be used in the manufacturing processes. Do the following:

1.  On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, open the *SO* type.
2.  Go to the **Manufacturing Settings** section of the **General** tab, and notice the following:
    -   **MTO Order**: Selected
    -   **Enable Linking to Production Orders**: Selected
    -   **Linkable Sales Order Statuses**: *Open*, *On Hold*, *Pending Approval*, *Pending Processing*, *Awaiting Payment*, *Credit Hold*, and *Back Order*
3.  In the **Order Type** box, select *TR*.
4.  In the **Manufacturing Settings** section of the **General** tab, select the following check boxes:
    -   **Enable Linking to Production Orders**
    -   **MTO Order**
5.  In the **Linkable Sales Order Statuses** list, select the following sales order statuses:
    -   *Open*
    -   *On Hold*
6.  On the form toolbar, click **Save**.
7.  In the **Order Type** box, select *QT*.
8.  In the **Manufacturing Settings** section of the **General** tab, select the **Allow Estimating** check box.
9.  On the form toolbar, click **Save**.

## Step 12: Reviewing Bill of Material Preferences { .section}

In a production system, you would need to specify the basic settings related to bills of material to be able to start implementation of the manufacturing processes. These settings have been predefined in the *U100* dataset for simplicity. In this step, you will review the bill of material settings. Do the following:

1.  Open the [BOM Preferences](../UserGuide/AM_10_10_00.md) \(AM101000\) form.
2.  On the **General** tab, review the settings as follows:
    1.  Notice that *AMBOM* is specified in the **BOM Numbering Sequence** box. The system will use this numbering sequence for bill of material identifiers when you create a bill of material on the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form.
    2.  Notice that *A* is specified in the **Default Revision** box. The system will copy this value when you create a bill of material on the [Bill of Material](../UserGuide/AM_20_80_00.md) form.

## Step 13: Reviewing Production Preferences { .section}

In a production system, you would need to specify the basic settings related to production management to be able to start implementation of the manufacturing processes. These settings have been predefined in the *U100* dataset for simplicity. In this step, you will review the production settings. Do the following:

1.  Open the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form.
2.  Notice that the following settings have been specified in the **Numbering Settings** section:
    -   **Move Numbering Sequence**: *AMBATCH*
    -   **Labor Numbering Sequence**: *AMBATCH*
    -   **Material Numbering Sequence**: *AMBATCH*
    -   **WIP Adjust Numbering Sequence**: *AMWIP*
    -   **Cost Numbering Sequence**: *AMCOST*

You have prepared the system for the implementation of manufacturing functionality.

**Parent topic:**[Preparing the System for Manufacturing Implementation](../ImplementationGuide/config_MFG_General_Settings_Mapref.md)

