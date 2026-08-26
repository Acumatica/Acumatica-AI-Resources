# Estimating: Process Activity {#_9d1d518f-4c71-4401-870b-62b8f1720e79 .task}

The following activity will walk you through the estimating-related processes.

## Process Overview { .section}

In this activity, to perform processes related to estimates, you will do the following:

1.  On the [Estimate](AM_30_30_00.md) \(AM303000\) form, create an estimate.
2.  On the [Estimate Operation](AM_30_40_00.md) \(AM304000\) form, specify operation details.
3.  On the [Create Inventory Items](AM_50_70_00.md) \(AM507000\) form, create stock items from non-inventory items.
4.  On the [Estimate](AM_30_30_00.md) form, create a bill of material based on the estimate.
5.  On the same form, create a production order based on the estimate.
6.  On the same form, create an estimate and replace its details with the details of another estimate.

## System Preparation { .section}

Do the following:

1.  As prerequisites to the current activity, perform the [Estimating: Implementation Activity](MFG_Estimating_Implem_Activity.md) activity so that the needed settings related to estimates have been specified.
2.  Launch the Acumatica ERP website, and sign in to the company in which the prerequisite activity has been performed. You should sign in as the implementation consultant by using the *admin* username and the password for this user valid for your instance.
3.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.
4.  Make sure that the *Estimating* feature in the *Manufacturing* group of features has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Step 1: Creating an Estimate { .section}

To create an estimate, do the following:

1.  On the [Estimate](AM_30_30_00.md) \(AM303000\) form, add a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the Summary area, specify the following:
    -   **Revision**: *A* \(automatically specified\)
    -   **Inventory ID**: `NEWITEM` \(This item does not exist in the system.\)
    -   **Item Description**: `New Item`
    -   **Estimate Class**: *DEFAULT* \(automatically selected\)
3.  Go to the **Totals** tab, and notice that the following has been done:
    -   In the **UOM** box of the **Order Qty** section, *EA* has been selected.
    -   In the **Markup** section, the box values have been copied from the settings of the `DEFAULT` estimate class.
4.  On the **Operations** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the row, specify the following information:
        -   **Operation ID**: `010`
        -   **Work Center**: *WC10* \(automatically selected\)
        -   **Setup Time**: `02:00`
        -   **Run Units**: `15`
        -   **Run Time**: `01:00`
    3.  On the form toolbar, click **Save**.

## Step 2: Specifying Operation Details { .section}

To specify operation details, do the following:

1.  While you are still viewing the estimate on the [Estimate](AM_30_30_00.md) \(AM303000\) form, in the **Operation ID** column on the **Operations** tab, click the link with the *010* operation ID. The system opens the [Estimate Operation](AM_30_40_00.md) \(AM304000\) form for the operation in a new browser tab.
2.  On the **Material** tab, click **Add Row**.
3.  In the row, specify the following:
    -   **Inventory ID**: *WIDGET01*
    -   **Qty. Required**: `1` \(automatically specified\)
    -   **Warehouse**: *RETAIL*
4.  On the same tab, click **Add Row** to add another material row.
5.  In the row, specify the following:
    -   **Inventory ID**: `NEWMTL` \(This ID does not exist in the system, so you need to type it in the box.\)
    -   **Description**: `New material`
    -   **Item Class**: *WIDGETS*
    -   **Qty. Required**: `1` \(automatically specified\)
    -   **UOM**: *EA* \(automatically specified\)
    -   **Unit Cost**: `70.00`
    -   **Backflush Materials**: Cleared
    -   **Warehouse**: *RETAIL*
    -   **Non-Inventory**: Selected \(automatically specified\)
6.  On the **Overhead** tab, click **Add Row**.
7.  In the row, specify the following:
    -   **Overhead ID**: *ADMIN*
    -   **Factor**: `1` \(automatically specified\)
8.  On the form toolbar, click **Save**.

## Step 3: Creating Stock Items for Non-Inventory Items { .section}

To create stock items for non-inventory items, do the following:

1.  On the [Estimate](AM_30_30_00.md) \(AM303000\) form, open the estimate you created earlier in this activity.
2.  On the More menu \(under **Estimate Management**\), click **Create Inventory Items**. The system opens the [Create Inventory Items](AM_50_70_00.md) \(AM507000\) form in a new browser tab.

    **Tip:** You open the More menu by clicking the More button \(…\) on the form toolbar.

3.  Make sure that in the **Estimate ID** box, the estimate you created earlier in this activity is specified.
4.  Notice that *A* is specified in the **Revision** box.
5.  Notice that two rows \(for the new item and new material\) are displayed in the table.
6.  On the form toolbar, click **Process All**.

    The system opens the **Processing** dialog box and creates stock items from non-inventory items.

7.  Wait until the processing is completed and close the **Processing** dialog box.

## Step 4: Creating a Bill of Material Based on an Estimate { .section}

To create a bill of material based on the estimate, do the following on the [Estimate](AM_30_30_00.md) \(AM303000\) form:

1.  Open the estimate you created earlier in this activity.
2.  On the More menu, click **Create BOM**.

    **Tip:** You may need to refresh the page after stock items have been created so that the command becomes available on the menu.

3.  In the **Create BOM** dialog box, which opens, do the following:
    1.  Make sure that *A* is specified in the **Revision** box.
    2.  In the **Warehouse** box, select *RETAIL*.
    3.  Click **Create**. The system opens the [Bill of Material](AM_20_80_00.md) \(AM208000\) form in a new browser window with a new bill of material and the values copied from the estimate.
4.  On the form toolbar, click **Save**.
5.  Close the [Bill of Material](AM_20_80_00.md) form.

## Step 5: Creating a Production Order Based on an Estimate { .section}

To create a production order based on the estimate, while you are still viewing the estimate on the [Estimate](AM_30_30_00.md) \(AM303000\) form, do the following:

1.  Refresh the browser tab with the [Estimate](AM_30_30_00.md) form.
2.  On the More menu, click **Create Production Order**.
3.  In the **Create Production Order** dialog box, which opens, do the following:
    1.  Notice that *RO* is selected by default in the **Order Type** box.
    2.  In the **Warehouse** box, select *RETAIL*.
    3.  Notice that *STORAGE* has been automatically specified in the **Location** box.
    4.  Click **Create**. The system creates a production order and opens it on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form in a new browser window.
4.  Notice that *Estimate* is specified in the **Source** box of the **References** tab \(the **Source** section\). This means that the production order has been created based on an estimate.
5.  Close the [Production Order Maintenance](AM_20_15_00.md) form.

## Step 6: Replacing Estimate Details with the Details of Another Estimate { .section}

To replace details of a new estimate by details of another estimate, do the following:

1.  On the [Estimate](AM_30_30_00.md) \(AM303000\) form, add a new record.
2.  Make sure that `A` is specified in the **Revision** box.
3.  In the **Inventory ID** box, select *MGWIDGET*.
4.  On the form toolbar, click **Save**.
5.  On the More menu \(under **Estimate Management**\), click **Create by Copying**.
6.  In the **Copy From** dialog box, which opens, do the following:
    1.  Make sure that *Estimate* is selected in the **Copy From** box.
    2.  In the **Estimate ID** box, select the previous estimate that you created earlier in this activity.
    3.  In the **Revision** box, select *A*.
    4.  Select the **Override Inventory ID** check box.
    5.  Click **Copy**. The system copies the settings of the specified estimate to the current estimate.
7.  Notice that `NEWITEM` is selected in the **Inventory ID** box.

**Parent topic:**[Estimating](../UserGuide/MFG_Estimating_Mapref.md)

