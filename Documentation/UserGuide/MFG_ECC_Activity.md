# Engineering Change Control: Process Activity {#_981ae553-005d-449f-85fc-e1402c2da7ba .task}

The following activity will walk you through the process of making changes in a bill of material by using engineering change control.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Engineering Change Request](AM_21_00_00.md) \(AM210000\) form, you will create an engineering change request for changes in the bill of material and approve the request.
2.  On the [Engineering Change Order](AM_21_50_00.md) \(AM215000\) form, you will create an engineering change order based on the engineering change request and approve the order.
3.  On the same form you will commit changes from the engineering change order to the bill of material.

## System Preparation { .section}

Before you start making changes to a bill of material by using engineering change control, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *SalesDemo* dataset preloaded. You should sign in as the system administrator with the *admin* username and the password for this user valid for your instance.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.
3.  Make sure that the *Engineering Change Control* feature in the *Manufacturing* group of features has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Step 1: Creating an Engineering Change Request { .section}

To create an engineering change request for changes in a bill of material, do the following:

1.  On the [Engineering Change Request](AM_21_00_00.md) \(AM210000\) form, add a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the **BOM ID** box of the Summary area, select *BOM000001*.
3.  Notice that *A* is specified by default in the **BOM Revision** box.
4.  In the **Description** box, enter `Assemble Printed Circuit Board with inspection`.
5.  On the form toolbar, click **Save**.
6.  On the table toolbar of the **Operations** tab, click **Add Row**.
7.  In the row, specify the following:
    -   **Operation ID**: `0040`
    -   **Work Center**: *WC100*
    -   **Run Units**: `10`
    -   **Run Time**: `01:00`
    -   **Queue Time**: `00:00`
8.  Make sure that all other values of time boxes \(except **Machine Time**\) are `00:00`.
9.  Notice that the value of the **Change Status** is *Inserted*.
10. On the form toolbar, click **Save**.
11. On the form toolbar, click **Submit** to confirm that you completed making changes in the request.
12. On the form toolbar, click **Approve** to approve the changes made in the request.

## Step 2: Creating an Engineering Change Order { .section}

To create an engineering change order based on the engineering change request, do the following:

1.  While you are still viewing the engineering change request on the [Engineering Change Request](AM_21_00_00.md) \(AM210000\) form, on the form toolbar, click **Create ECO**. The system opens the [Engineering Change Order](AM_21_50_00.md) \(AM215000\) form for the new order and copies details from the request.
2.  On the form toolbar, click **Save**.
3.  On the form toolbar, click **Submit** to confirm the order details.
4.  On the form toolbar, click **Approve** to approve the order.

## Step 3: Committing Changes to BOM { .section}

To commit changes from the engineering change order to the bill of material, do the following:

1.  While you are still viewing the engineering change order on the [Engineering Change Order](AM_21_50_00.md) \(AM215000\) form, on the form toolbar, click **Commit Changes to BOM**. The system opens the [Bill of Material](AM_20_80_00.md) \(AM208000\) form with the new revision of the *BOM000001* bill of material.
2.  Notice that the system specified *E* in the **Revision** box.
3.  Clear the **Hold** check box, and notice that the system has changed the status of the bill of material to **Active**.
4.  On the form toolbar, click **Save**.

You have successfully created a new revision of a bill of material by using engineering change control.

**Parent topic:**[Engineering Change Control](../UserGuide/MFG_ECC_Mapref.md)

