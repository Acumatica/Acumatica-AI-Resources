# Advanced Planning and Scheduling: Process Activity {#_3ae1ebb0-f3a7-43eb-ada2-1f9f408afc18 .task}

The following activity will walk you through the process of advanced scheduling of production orders.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form, you will create a production order to be scheduled.
2.  On the [APS Maintenance Process](AM_51_20_00.md) \(AM512000\) form, you will run the maintenance process of advanced planning and scheduling.
3.  On the [Rough Cut Planning](AM_50_10_00.md) \(AM501000\) form, you will schedule the created production order.
4.  On the [Work Center Schedule](AM_00_00_01.md) \(AM000001\) form, you will view how the system scheduled the production order considering other open production orders.

## System Preparation { .section}

Before you start making changes to a bill of material by using engineering change control, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *SalesDemo* dataset preloaded. You should sign in as the system administrator with the *admin* username and the password for this user valid for your instance.
2.  Enable the *Advanced Planning and Scheduling* feature in the *Manufacturing* group of features on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
3.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Creating a Production Order { .section}

To create a production order to be scheduled, do the following:

1.  On the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form, add a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the **Inventory ID** box of the Summary area, select *MGWIDGET*.
3.  In the **Qty. to Produce** box of the Summary area, enter `5`.
4.  On the form toolbar, click **Save**.
5.  Memorize or write down the number in the **Production Nbr.** box. You will need this value in the following steps.

## Step 2: Performing APS Maintenance { .section}

To update the work center schedule and clean up history before running scheduling, do the following:

1.  Open the [APS Maintenance Process](AM_51_20_00.md) \(AM512000\) form.
2.  In the Selection area, select the following check boxes:
    -   **Update Work Center Schedule from Calendar**
    -   **Cleanup History**
3.  On the form toolbar, click **Process**. Wait until the system performs maintenance. On the **Process History** tab, the system updates the dates and usernames in the **Work Center Schedule** and **History Cleanup** sections.

## Step 3: Scheduling the Production Orders { .section}

To schedule the production order, do the following:

1.  Open the [Rough Cut Planning](AM_50_10_00.md) \(AM501000\) form.
2.  Notice that the **Release Orders** check box in the Selection area is cleared and the **Exclude Planning Orders** and **Exclude Firm Orders** check boxes are selected.
3.  Schedule the production order you created earlier in this activity as follows:
    1.  Select the check box in the unlabeled column of the row for the production order.
    2.  Make sure that *Schedule* is selected in the **Action** box of the Selection area.
    3.  On the form toolbar, click **Process**.

        The system opens the **Processing** dialog box and runs the process of the production order scheduling.

    4.  Wait until the processing is completed, and close the **Processing** dialog box.

## Step 4: Viewing Work Center Schedule { .section}

To review the schedule of work centers where the *MGWIDGET* will be produced, do the following:

1.  Open the [Work Center Schedule](AM_00_00_01.md) \(AM000001\) form.
2.  In the Selection area, select the following:

    -   **Order Type**: *RO*
    -   **Production Nbr.**: The number of the production order you created earlier in this activity.
    In the table, the system displays only the rows related to the selected production order.

3.  Notice that in the row for the *WC10* work center, the system scheduled 5 blocks \(30 minutes each\) and specified the start and end time of the operation.
4.  Notice that in the row for the *WC100* work center, the system scheduled 3 blocks \(30 minutes each\) and specified the start and end time of the operation

You have scheduled the created production order by using advanced planning and scheduling.

**Parent topic:**[Advanced Planning and Scheduling](../UserGuide/MFG_APS_Mapref.md)

