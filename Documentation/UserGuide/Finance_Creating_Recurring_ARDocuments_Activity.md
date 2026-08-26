# Recurring AR Documents: Process Activity {#_33d96109-4ea7-49bc-98eb-2e84f52e9dab .task}

The following activity will walk you through the process of setting up and running schedules for recurring AR documents.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams provides online training courses in the amount of $1,470 to Cafe French Bun for 2026. The trainings should be paid monthly in equal installments of $490. Acting a SweetLife accountant, you need to create a recurring AR invoice to be used as a template, create a schedule for the invoice, and run the schedule to generate a document for January 2026.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant.
-   On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the **Hold Documents on Entry** check box has been selected in the **Data Entry Settings** section.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *FRBUN \(Cafe French Bun\)* customer has been configured.

## Process Overview { .section}

In this activity, you will create an invoice to be used as a template on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. On the [Recurring Transactions](AR_20_35_00.md) \(AR203500\) form, you will create a schedule for this invoice. On the [Generate Recurring Transactions](AR_50_40_00.md) \(AR504000\) form, you will run this schedule. On the [Release AR Documents](AR_50_10_00.md) \(AR501000\) form, you will release the generated invoice. Finally, on the [Invoices and Memos](AR_30_10_00.md) form, you will review this invoice and the original invoice that was used as a template.

## System Preparation { .section}

Before you begin creating a schedule for recurring documents, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Creating an Invoice to be Used as a Template { .section}

To create a recurring invoice with the *Balanced* status to be used as a template, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Date**: *1/30/2026*
    -   **Customer**: *FOODCLVR*
    -   **Description**: `Online training`
3.  On the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Online training`
    -   **Ext. Price**: `490`
4.  On the form toolbar, click **Remove Hold** to give the invoice the *Balanced* status.
5.  Click **Save** to save the changes.

## Step 2: Creating a Schedule for the Invoice { .section}

To create a schedule for the invoice, do the following:

1.  While you are still viewing the invoice that you have created and saved on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, click **Add to Schedule** on the form toolbar.

    The [Recurring Transactions](AR_20_35_00.md) \(AR203500\) form is opened.

2.  Configure a schedule to repeat the invoice three times, on the last day of each month starting from January, by specifying the following settings:
    -   **Start Date**: *1/30/2026* \(or any date that is not after the first date when you need to execute the schedule\)
    -   **Execution Limit \(Times\)**: `3`
    -   **Description**: `Online training invoice`
    -   **Frequency**: *Monthly*
    -   **Every**: *1* month\(s\)
    -   **Recurrence**: *Fixed Day of Month* *30*
3.  On the form toolbar, click **Save** to save the changes.

## Step 3: Running a Schedule and Generating an Invoice { .section}

To run the schedule and generate a invoice, do the following:

1.  Open the [Generate Recurring Transactions](AR_50_40_00.md) \(AR504000\) form.
2.  In the Summary area, specify the following settings:
    -   **Execution Date**: *1/30/2026*
    -   **Stop After Number of Executions**: Selected, `1`
3.  In the table that displays recurring transaction schedules, select the unlabeled check box in the row of the only schedule, and click **Run** on the form toolbar to generate the invoice according to the schedule.
4.  In the **Processing** dialog box, which opens, go to the **Processed** tab and click the link in the **Schedule ID** column to open the schedule in a separate window on the [Recurring Transactions](AR_20_35_00.md) \(AR203500\) form.
5.  On the **Generated Documents** tab of this form, verify that the system has generated an invoice by using the template.

    Only one invoice has been generated because the schedule determines the dates on or after which each document can be generated; no documents can be generated ahead of time. The generated document has the same details as the scheduled document, but its transaction date is the date specified in the schedule.

6.  Click the link in the **Reference Nbr.** column to open the invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
7.  On the form toolbar, click **Remove Hold** and click **Save** to save the changes.

## Step 4: Releasing the Generated Invoice { .section}

To release the generated invoice, do the following:

1.  Open the [Release AR Documents](AR_50_10_00.md) \(AR501000\) form.
2.  In the table, select the unlabeled check box for the $490 invoice to *FRBUN*.
3.  Click **Release** on the form toolbar.
4.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, open the released invoice and go to the **Financial** tab.
5.  Click the link in the **Original Document** box.

    The invoice that has been used as a template is opened in a new browser tab. Notice that the status of the original invoice is now *Scheduled*.


**Parent topic:**[Creating Recurring AR Documents](../UserGuide/Finance_Creating_Recurring_ARDocuments_Mapref.md)

