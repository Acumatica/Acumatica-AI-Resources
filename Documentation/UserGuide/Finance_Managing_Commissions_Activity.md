# Managing Commissions: Process Activity {#_727a3a96-3c35-4d99-9d75-a7e2c5dd7654 .task}

The following activity will walk you through the process of setting up and calculating salesperson commissions.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the management of SweetLife Fruits &amp; Jams has decided to introduce commission payments to its salespeople. According to the company's commission plan, each salesperson will earn a monthly 10% commission on every sale. Commissions should be calculated on each invoice amount.

Further suppose that after the plan became effective, Grace Norman sold training courses to one of the customers, Allen's Bakery, on 1/30/2026.

Acting as the SweetLife chief accountant, you need to set up commissions in the system, create an invoice with Grace Norman specified as a salesperson for it, and calculate this salesperson's commission for January.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant

On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the **Hold Documents on Entry** check box has been selected in the **Data Entry Settings** section.

On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *ABAKERY \(Allen's Bakery\)* customer has been defined.

On the [Employees](EP_20_30_00.md) \(EP203000\) form, the *Grace Norman* employee record has been created.

## Process Overview { .section}

In this activity, you will perform the following steps:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the *Commissions* feature.
2.  On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, review the commission settings.
3.  On the [Salespersons](AR_20_50_00.md) \(AR205000\) form, create the salesperson and specify the default commission percentage for her.
4.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, update the customer's settings by specifying the default salesperson for the customer.
5.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, create and release a commissionable invoice.
6.  On the [Calculate Commissions](AR_50_55_00.md) \(AR505500\) form, prepare commissions for January.
7.  On the [Close Commission Period](AR_50_65_00.md) \(AR506500\) form, close the commission period.

## System Preparation { .section}

Before you begin the setup and calculation of commissions, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Enabling the Needed Feature { .section}

To enable the *Commissions* feature, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Select the **Commissions** check box in the **Advanced Financials** group of features.
4.  On the form toolbar, click **Enable** to enable the feature.

## Step 2: Reviewing the Accounts Receivable Preferences { .section}

To review the commission-related settings, do the following:

1.  Open the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
2.  On the **General** tab \(**Salesperson Commission Settings** section\), make sure that the following options are specified:
    -   **Salesperson Commission By**: *Invoice*
    -   **Commission Period Type**: *Monthly*

## Step 3: Specifying the Salesperson's Default Commission { .section}

To create the salesperson and specify her default commission percentage, do the following:

1.  On the [Salespersons](AR_20_50_00.md) \(AR205000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Salesperson ID**: `GNORMAN`
    -   **Is Active**: Selected
    -   **Name**: `Grace Norman`
    -   **Default Commission %**: `10`

        This commission percentage can be overridden for a particular invoice.

3.  On the **Customers** tab, click **New Row** on the table toolbar and specify the following settings in the added row:

    -   **Customer**: *ABAKERY*
    -   **Commission**: *10* \(inserted automatically\)
    **Tip:** This step is optional because you have already specified the default commission percentage. On this tab, you can create a list of customers the salesperson works with, and specify the particular commission percentage for every customer if this percentage differs from the default one.

4.  On the form toolbar, click **Save**.

## Step 4: Updating the Customer's Settings { .section}

To specify Grace Norman as the default salesperson for the customer, do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *ABAKERY* customer.
2.  On the **Salespersons** tab, notice that Grace Norman has been added as a salesperson for this customer. Select the **Default** check box in this row, which is the only row on the tab.
3.  On the form toolbar, click **Save**.

## Step 5: Creating a Commissionable Invoice { .section}

To create an invoice in which Grace Norman’s commission will be specified, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Customer**: *ABAKERY*
    -   **Description**: `Training`
3.  On the **Details** tab, click **Add Row** on the table toolbar and specify the following settings in the added row:

    -   **Branch**: *HEADOFFICE*
    -   **Ext. Price**: `1590`
    Notice that the **Commissionable** check box is automatically selected for this row.

4.  Go to the **Commissions** tab and review the settings on this tab.

    Grace Norman has been added as a salesperson for this invoice, and the commission amount of $159 has been calculated by the system.

5.  On the form toolbar, click **Remove Hold** and then click **Release** to release the invoice.

## Step 6: Preparing Commissions { .section}

To prepare commissions for Grace Norman, do the following:

1.  Open the [Calculate Commissions](AR_50_55_00.md) \(AR505500\) form.
2.  In the **Commission Period** box, make sure that *01-2026* is selected.

    In the **Status** box, the status of the *01-2026* commission period is *Open*. It means that commissions can be prepared for this period.

3.  Make sure that a record for Grace Norman is displayed in the table. On the table toolbar, click **Process All**.
4.  In the warning dialog box that is displayed, click **OK**.

    The system processes the commission and changes the status of the commission period to *Prepared*.


## Step 7: Closing the Commission Period { .section}

To close the *01-2026* commission period, do the following:

1.  Open the [Close Commission Period](AR_50_65_00.md) \(AR506500\) form.
2.  Make sure that *01-2026* is displayed in the **Commission Period** box.
3.  Make sure that the **Status** box contains *Prepared*. You can close the commission period only if it has this status.
4.  Make sure that the table displays Grace Norman and her $159 commission.
5.  On the More menu, click **Close Period** to initiate the process of collecting commission information and then close the period.

    If the operation completes successfully, the system changes the status of the commission period to *Closed*.


**Parent topic:**[Managing Commissions](../UserGuide/Finance_Managing_Commissions_Mapref.md)

