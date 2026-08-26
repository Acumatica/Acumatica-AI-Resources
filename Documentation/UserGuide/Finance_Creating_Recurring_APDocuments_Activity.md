# Recurring AP Documents: Process Activity {#_e70dd778-8c1a-4aaf-a03c-f14bf798dcb2 .task}

The following activity will walk you through the processes of setting up and running schedules for recurring AP documents.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams has insured its warehouses through Arc Insurance for 2026. The insurance should be paid monthly in equal amounts of $290. Acting as a SweetLife accountant, you need to create a recurring AP bill to be used as a template, create a schedule for the bill, and run the schedule to generate a document for January 2026.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
-   On the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, the **Hold Documents on Entry** check box has been selected in the **Data Entry Settings** section.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *ARCINS \(Arc Insurance\)* vendor has been configured.

## Process Overview { .section}

In this activity, you will create a bill to be used as a template on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. On the [Recurring Transactions](AP_20_35_00.md) \(AP203500\) form, you will create a schedule for this bill. On the [Generate Recurring Transactions](AP_50_40_00.md) \(AP504000\) form, you will run this schedule. On the [Release AP Documents](AP_50_10_00.md) \(AP501000\) form, you will release the generated bill. Finally, on the [Bills and Adjustments](AP_30_10_00.md) form, you will review this bill and the original bill that was used as a template.

## System Preparation { .section}

Before you begin creating a schedule for recurring documents, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Creating a Bill to Be Used as a Template { .section}

To create a recurring bill with the *Balanced* status to be used as a template, do the following:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Date**: *1/30/2026*
    -   **Vendor**: *ARCINS*
    -   **Description**: `Insurance`
3.  On the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Insurance`
    -   **Ext. Cost**: `290`
4.  On the form toolbar, click **Remove Hold** to give the bill the *Balanced* status.
5.  Click **Save** to save the changes.

## Step 2: Creating a Schedule for the Bill { .section}

To create a schedule for the bill, do the following:

1.  While you are still viewing the bill that you have created and saved on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, click **Add to Schedule** on the form toolbar.

    The [Recurring Transactions](AP_20_35_00.md) \(AP203500\) form is opened.

2.  Configure a schedule to repeat the bill 12 times, on the last day of each month, by specifying the following settings:
    -   **Start Date**: *1/30/2026*
    -   **Execution Limit \(Times\)**: `12`
    -   **Description**: `Insurance bill`
    -   **Frequency**: *Monthly*
    -   **Every**: *1* month\(s\)
    -   **Recurrence**: *Fixed Day of Month* *30*
3.  On the form toolbar, click **Save** to save the changes.

## Step 3: Running the Schedule and Generating a Bill { .section}

To run the schedule and generate a bill, do the following:

1.  Open the [Generate Recurring Transactions](AP_50_40_00.md) \(AP504000\) form.
2.  In the Summary area, specify the following settings:
    -   **Execution Date**: *1/30/2026*
    -   **Stop After Number of Executions**: Selected, `1`
3.  In the table that displays recurring transaction schedules, select the unlabeled check box in the row of the only schedule, and click **Run** on the form toolbar to generate the bill according to the schedule.
4.  In the **Processing** dialog box, which opens, go to the **Processed** tab and click the link in the **Schedule ID** column to open the schedule in a separate window on the [Recurring Transactions](AP_20_35_00.md) \(AP203500\) form.
5.  On the **Generated Documents** tab of this form, verify that the system has generated a bill by using the template.

    Only one bill has been generated because the schedule determines the dates on or after which each document can be generated; no documents can be generated ahead of time. The generated document has the same details as the scheduled document, but its transaction date is the date specified in the schedule.


## Step 4: Releasing the Generated Bill { .section}

To release the generated bill, do the following:

1.  Open the [Release AP Documents](AP_50_10_00.md) \(AP501000\) form.
2.  In the table, select the unlabeled check box for the $290 bill to *ARCINS*.
3.  Click **Release** on the form toolbar.
4.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, open the released bill and go to the **Financial** tab.
5.  Click the link in the **Original Document** box.

    The bill that has been used as a template is opened in a new browser tab. Notice that the status of the original bill is now *Scheduled*.


**Parent topic:**[Creating Recurring AP Documents](../UserGuide/Finance_Creating_Recurring_APDocuments_Mapref.md)

